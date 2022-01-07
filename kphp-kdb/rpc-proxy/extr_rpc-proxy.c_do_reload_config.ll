; ModuleID = '/home/carl/AnghaBench/kphp-kdb/rpc-proxy/extr_rpc-proxy.c_do_reload_config.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/rpc-proxy/extr_rpc-proxy.c_do_reload_config.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rpc_config = type { i32, i64*, i32, i64, i32* }

@need_reload_config = common dso_local global i64 0, align 8
@config_filename = common dso_local global i8* null, align 8
@O_RDONLY = common dso_local global i32 0, align 4
@fd = common dso_local global i64* null, align 8
@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [35 x i8] c"cannot re-read config file %s: %m\0A\00", align 1
@verbosity = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [30 x i8] c"/etc/hosts changed, reloaded\0A\00", align 1
@NextConf = common dso_local global %struct.rpc_config* null, align 8
@CurConf = common dso_local global %struct.rpc_config* null, align 8
@.str.2 = private unnamed_addr constant [70 x i8] c"error while re-reading config file %s, new configuration NOT applied\0A\00", align 1
@.str.3 = private unnamed_addr constant [45 x i8] c"fatal error while re-reading config file %s\0A\00", align 1
@rpc_cluster_tree = common dso_local global i32 0, align 4
@now = common dso_local global i64 0, align 8
@config_bytes = common dso_local global i32 0, align 4
@config_buff = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [70 x i8] c"configuration file %s re-read successfully, new configuration active\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @do_reload_config(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.rpc_config*, align 8
  %6 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i64 0, i64* @need_reload_config, align 8
  %7 = load i8*, i8** @config_filename, align 8
  %8 = load i32, i32* @O_RDONLY, align 4
  %9 = call i64 @open(i8* %7, i32 %8)
  %10 = load i64*, i64** @fd, align 8
  %11 = getelementptr inbounds i64, i64* %10, i64 0
  store i64 %9, i64* %11, align 8
  %12 = load i64*, i64** @fd, align 8
  %13 = getelementptr inbounds i64, i64* %12, i64 0
  %14 = load i64, i64* %13, align 8
  %15 = icmp slt i64 %14, 0
  br i1 %15, label %16, label %20

16:                                               ; preds = %1
  %17 = load i32, i32* @stderr, align 4
  %18 = load i8*, i8** @config_filename, align 8
  %19 = call i32 (i32, i8*, ...) @fprintf(i32 %17, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0), i8* %18)
  store i32 -1, i32* %2, align 4
  br label %119

20:                                               ; preds = %1
  %21 = call i32 (...) @kdb_load_hosts()
  store i32 %21, i32* %4, align 4
  %22 = load i32, i32* %4, align 4
  %23 = icmp sgt i32 %22, 0
  br i1 %23, label %24, label %30

24:                                               ; preds = %20
  %25 = load i64, i64* @verbosity, align 8
  %26 = icmp sgt i64 %25, 0
  br i1 %26, label %27, label %30

27:                                               ; preds = %24
  %28 = load i32, i32* @stderr, align 4
  %29 = call i32 (i32, i8*, ...) @fprintf(i32 %28, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0))
  br label %30

30:                                               ; preds = %27, %24, %20
  %31 = load %struct.rpc_config*, %struct.rpc_config** @NextConf, align 8
  %32 = load %struct.rpc_config*, %struct.rpc_config** @CurConf, align 8
  %33 = call i32 @parse_config(%struct.rpc_config* %31, %struct.rpc_config* %32, i32 0)
  store i32 %33, i32* %4, align 4
  %34 = load i64*, i64** @fd, align 8
  %35 = getelementptr inbounds i64, i64* %34, i64 0
  %36 = load i64, i64* %35, align 8
  %37 = call i32 @close(i64 %36)
  %38 = load i32, i32* %4, align 4
  %39 = icmp slt i32 %38, 0
  br i1 %39, label %40, label %44

40:                                               ; preds = %30
  %41 = load i8*, i8** @config_filename, align 8
  %42 = call i32 @vkprintf(i32 0, i8* getelementptr inbounds ([70 x i8], [70 x i8]* @.str.2, i64 0, i64 0), i8* %41)
  %43 = load i32, i32* %4, align 4
  store i32 %43, i32* %2, align 4
  br label %119

44:                                               ; preds = %30
  %45 = load %struct.rpc_config*, %struct.rpc_config** @NextConf, align 8
  %46 = load %struct.rpc_config*, %struct.rpc_config** @CurConf, align 8
  %47 = call i32 @parse_config(%struct.rpc_config* %45, %struct.rpc_config* %46, i32 1)
  store i32 %47, i32* %4, align 4
  %48 = load i32, i32* %4, align 4
  %49 = icmp slt i32 %48, 0
  br i1 %49, label %50, label %58

50:                                               ; preds = %44
  %51 = load i8*, i8** @config_filename, align 8
  %52 = call i32 @vkprintf(i32 0, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.3, i64 0, i64 0), i8* %51)
  %53 = load %struct.rpc_config*, %struct.rpc_config** @NextConf, align 8
  %54 = call i32 @clear_config(%struct.rpc_config* %53, i32 0)
  %55 = load i32, i32* %4, align 4
  %56 = sub nsw i32 0, %55
  %57 = call i32 @exit(i32 %56) #3
  unreachable

58:                                               ; preds = %44
  %59 = load %struct.rpc_config*, %struct.rpc_config** @CurConf, align 8
  store %struct.rpc_config* %59, %struct.rpc_config** %5, align 8
  %60 = load %struct.rpc_config*, %struct.rpc_config** @NextConf, align 8
  store %struct.rpc_config* %60, %struct.rpc_config** @CurConf, align 8
  %61 = load %struct.rpc_config*, %struct.rpc_config** %5, align 8
  store %struct.rpc_config* %61, %struct.rpc_config** @NextConf, align 8
  %62 = load i32, i32* @rpc_cluster_tree, align 4
  %63 = call i32 @tree_clear_rpc_cluster(i32 %62)
  store i32 %63, i32* @rpc_cluster_tree, align 4
  store i32 0, i32* %6, align 4
  br label %64

64:                                               ; preds = %80, %58
  %65 = load i32, i32* %6, align 4
  %66 = load %struct.rpc_config*, %struct.rpc_config** @CurConf, align 8
  %67 = getelementptr inbounds %struct.rpc_config, %struct.rpc_config* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 8
  %69 = icmp slt i32 %65, %68
  br i1 %69, label %70, label %83

70:                                               ; preds = %64
  %71 = load i32, i32* @rpc_cluster_tree, align 4
  %72 = load %struct.rpc_config*, %struct.rpc_config** @CurConf, align 8
  %73 = getelementptr inbounds %struct.rpc_config, %struct.rpc_config* %72, i32 0, i32 4
  %74 = load i32*, i32** %73, align 8
  %75 = load i32, i32* %6, align 4
  %76 = sext i32 %75 to i64
  %77 = getelementptr inbounds i32, i32* %74, i64 %76
  %78 = call i32 (...) @lrand48()
  %79 = call i32 @tree_insert_rpc_cluster(i32 %71, i32* %77, i32 %78)
  store i32 %79, i32* @rpc_cluster_tree, align 4
  br label %80

80:                                               ; preds = %70
  %81 = load i32, i32* %6, align 4
  %82 = add nsw i32 %81, 1
  store i32 %82, i32* %6, align 4
  br label %64

83:                                               ; preds = %64
  %84 = load %struct.rpc_config*, %struct.rpc_config** @NextConf, align 8
  %85 = call i32 @clear_config(%struct.rpc_config* %84, i32 1)
  %86 = load i32, i32* %3, align 4
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %88, label %90

88:                                               ; preds = %83
  %89 = call i32 (...) @create_all_outbound_connections()
  br label %90

90:                                               ; preds = %88, %83
  %91 = load i64, i64* @now, align 8
  %92 = icmp ne i64 %91, 0
  br i1 %92, label %93, label %95

93:                                               ; preds = %90
  %94 = load i64, i64* @now, align 8
  br label %97

95:                                               ; preds = %90
  %96 = call i64 @time(i32 0)
  br label %97

97:                                               ; preds = %95, %93
  %98 = phi i64 [ %94, %93 ], [ %96, %95 ]
  %99 = load %struct.rpc_config*, %struct.rpc_config** @CurConf, align 8
  %100 = getelementptr inbounds %struct.rpc_config, %struct.rpc_config* %99, i32 0, i32 3
  store i64 %98, i64* %100, align 8
  %101 = load i32, i32* @config_bytes, align 4
  %102 = load %struct.rpc_config*, %struct.rpc_config** @CurConf, align 8
  %103 = getelementptr inbounds %struct.rpc_config, %struct.rpc_config* %102, i32 0, i32 2
  store i32 %101, i32* %103, align 8
  %104 = call i64* @zmalloc(i32 33)
  %105 = load %struct.rpc_config*, %struct.rpc_config** @CurConf, align 8
  %106 = getelementptr inbounds %struct.rpc_config, %struct.rpc_config* %105, i32 0, i32 1
  store i64* %104, i64** %106, align 8
  %107 = load i32, i32* @config_buff, align 4
  %108 = load i32, i32* @config_bytes, align 4
  %109 = load %struct.rpc_config*, %struct.rpc_config** @CurConf, align 8
  %110 = getelementptr inbounds %struct.rpc_config, %struct.rpc_config* %109, i32 0, i32 1
  %111 = load i64*, i64** %110, align 8
  %112 = call i32 @md5_hex(i32 %107, i32 %108, i64* %111)
  %113 = load %struct.rpc_config*, %struct.rpc_config** @CurConf, align 8
  %114 = getelementptr inbounds %struct.rpc_config, %struct.rpc_config* %113, i32 0, i32 1
  %115 = load i64*, i64** %114, align 8
  %116 = getelementptr inbounds i64, i64* %115, i64 32
  store i64 0, i64* %116, align 8
  %117 = load i8*, i8** @config_filename, align 8
  %118 = call i32 @vkprintf(i32 0, i8* getelementptr inbounds ([70 x i8], [70 x i8]* @.str.4, i64 0, i64 0), i8* %117)
  store i32 0, i32* %2, align 4
  br label %119

119:                                              ; preds = %97, %40, %16
  %120 = load i32, i32* %2, align 4
  ret i32 %120
}

declare dso_local i64 @open(i8*, i32) #1

declare dso_local i32 @fprintf(i32, i8*, ...) #1

declare dso_local i32 @kdb_load_hosts(...) #1

declare dso_local i32 @parse_config(%struct.rpc_config*, %struct.rpc_config*, i32) #1

declare dso_local i32 @close(i64) #1

declare dso_local i32 @vkprintf(i32, i8*, i8*) #1

declare dso_local i32 @clear_config(%struct.rpc_config*, i32) #1

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #2

declare dso_local i32 @tree_clear_rpc_cluster(i32) #1

declare dso_local i32 @tree_insert_rpc_cluster(i32, i32*, i32) #1

declare dso_local i32 @lrand48(...) #1

declare dso_local i32 @create_all_outbound_connections(...) #1

declare dso_local i64 @time(i32) #1

declare dso_local i64* @zmalloc(i32) #1

declare dso_local i32 @md5_hex(i32, i32, i64*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
