; ModuleID = '/home/carl/AnghaBench/kphp-kdb/mc-proxy/extr_mc-proxy.c_do_reload_config.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/mc-proxy/extr_mc-proxy.c_do_reload_config.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mc_config = type { i64*, i32, i64 }

@need_reload_config = common dso_local global i64 0, align 8
@config_filename = common dso_local global i8* null, align 8
@O_RDONLY = common dso_local global i32 0, align 4
@fd = common dso_local global i64* null, align 8
@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [35 x i8] c"cannot re-read config file %s: %m\0A\00", align 1
@verbosity = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [30 x i8] c"/etc/hosts changed, reloaded\0A\00", align 1
@NextConf = common dso_local global %struct.mc_config* null, align 8
@CurConf = common dso_local global %struct.mc_config* null, align 8
@.str.2 = private unnamed_addr constant [70 x i8] c"error while re-reading config file %s, new configuration NOT applied\0A\00", align 1
@.str.3 = private unnamed_addr constant [99 x i8] c"error while re-reading config file %s, new configuration NOT applied: cannot open listening ports\0A\00", align 1
@.str.4 = private unnamed_addr constant [45 x i8] c"fatal error while re-reading config file %s\0A\00", align 1
@now = common dso_local global i64 0, align 8
@config_bytes = common dso_local global i32 0, align 4
@config_buff = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [70 x i8] c"configuration file %s re-read successfully, new configuration active\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @do_reload_config(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.mc_config*, align 8
  store i32 %0, i32* %3, align 4
  store i64 0, i64* @need_reload_config, align 8
  %6 = load i8*, i8** @config_filename, align 8
  %7 = load i32, i32* @O_RDONLY, align 4
  %8 = call i64 @open(i8* %6, i32 %7)
  %9 = load i64*, i64** @fd, align 8
  %10 = getelementptr inbounds i64, i64* %9, i64 0
  store i64 %8, i64* %10, align 8
  %11 = load i64*, i64** @fd, align 8
  %12 = getelementptr inbounds i64, i64* %11, i64 0
  %13 = load i64, i64* %12, align 8
  %14 = icmp slt i64 %13, 0
  br i1 %14, label %15, label %19

15:                                               ; preds = %1
  %16 = load i32, i32* @stderr, align 4
  %17 = load i8*, i8** @config_filename, align 8
  %18 = call i32 (i32, i8*, ...) @fprintf(i32 %16, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0), i8* %17)
  store i32 -1, i32* %2, align 4
  br label %112

19:                                               ; preds = %1
  %20 = call i32 (...) @kdb_load_hosts()
  store i32 %20, i32* %4, align 4
  %21 = load i32, i32* %4, align 4
  %22 = icmp sgt i32 %21, 0
  br i1 %22, label %23, label %29

23:                                               ; preds = %19
  %24 = load i64, i64* @verbosity, align 8
  %25 = icmp sgt i64 %24, 0
  br i1 %25, label %26, label %29

26:                                               ; preds = %23
  %27 = load i32, i32* @stderr, align 4
  %28 = call i32 (i32, i8*, ...) @fprintf(i32 %27, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0))
  br label %29

29:                                               ; preds = %26, %23, %19
  %30 = load %struct.mc_config*, %struct.mc_config** @NextConf, align 8
  %31 = load %struct.mc_config*, %struct.mc_config** @CurConf, align 8
  %32 = call i32 @parse_config(%struct.mc_config* %30, %struct.mc_config* %31, i32 0)
  store i32 %32, i32* %4, align 4
  %33 = load i64*, i64** @fd, align 8
  %34 = getelementptr inbounds i64, i64* %33, i64 0
  %35 = load i64, i64* %34, align 8
  %36 = call i32 @close(i64 %35)
  %37 = load i32, i32* %4, align 4
  %38 = icmp slt i32 %37, 0
  br i1 %38, label %39, label %43

39:                                               ; preds = %29
  %40 = load i8*, i8** @config_filename, align 8
  %41 = call i32 @vkprintf(i32 0, i8* getelementptr inbounds ([70 x i8], [70 x i8]* @.str.2, i64 0, i64 0), i8* %40)
  %42 = load i32, i32* %4, align 4
  store i32 %42, i32* %2, align 4
  br label %112

43:                                               ; preds = %29
  %44 = load %struct.mc_config*, %struct.mc_config** @NextConf, align 8
  %45 = call i32 @try_open_new_listening_sockets(%struct.mc_config* %44)
  store i32 %45, i32* %4, align 4
  %46 = load i32, i32* %4, align 4
  %47 = icmp slt i32 %46, 0
  br i1 %47, label %48, label %52

48:                                               ; preds = %43
  %49 = load i8*, i8** @config_filename, align 8
  %50 = call i32 @vkprintf(i32 0, i8* getelementptr inbounds ([99 x i8], [99 x i8]* @.str.3, i64 0, i64 0), i8* %49)
  %51 = load i32, i32* %4, align 4
  store i32 %51, i32* %2, align 4
  br label %112

52:                                               ; preds = %43
  %53 = load %struct.mc_config*, %struct.mc_config** @NextConf, align 8
  %54 = load %struct.mc_config*, %struct.mc_config** @CurConf, align 8
  %55 = call i32 @parse_config(%struct.mc_config* %53, %struct.mc_config* %54, i32 1)
  store i32 %55, i32* %4, align 4
  %56 = load i32, i32* %4, align 4
  %57 = icmp slt i32 %56, 0
  br i1 %57, label %58, label %66

58:                                               ; preds = %52
  %59 = load %struct.mc_config*, %struct.mc_config** @NextConf, align 8
  %60 = call i32 @clear_config(%struct.mc_config* %59, i32 0)
  %61 = load i8*, i8** @config_filename, align 8
  %62 = call i32 @vkprintf(i32 0, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.4, i64 0, i64 0), i8* %61)
  %63 = load i32, i32* %4, align 4
  %64 = sub nsw i32 0, %63
  %65 = call i32 @exit(i32 %64) #3
  unreachable

66:                                               ; preds = %52
  %67 = load i32, i32* %3, align 4
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %69, label %73

69:                                               ; preds = %66
  %70 = load %struct.mc_config*, %struct.mc_config** @NextConf, align 8
  %71 = load %struct.mc_config*, %struct.mc_config** @CurConf, align 8
  %72 = call i32 @transfer_listening_sockets(%struct.mc_config* %70, %struct.mc_config* %71)
  br label %73

73:                                               ; preds = %69, %66
  %74 = load %struct.mc_config*, %struct.mc_config** @CurConf, align 8
  store %struct.mc_config* %74, %struct.mc_config** %5, align 8
  %75 = load %struct.mc_config*, %struct.mc_config** @NextConf, align 8
  store %struct.mc_config* %75, %struct.mc_config** @CurConf, align 8
  %76 = load %struct.mc_config*, %struct.mc_config** %5, align 8
  store %struct.mc_config* %76, %struct.mc_config** @NextConf, align 8
  %77 = load %struct.mc_config*, %struct.mc_config** @NextConf, align 8
  %78 = call i32 @clear_config(%struct.mc_config* %77, i32 1)
  %79 = load i32, i32* %3, align 4
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %81, label %83

81:                                               ; preds = %73
  %82 = call i32 (...) @create_all_outbound_connections()
  br label %83

83:                                               ; preds = %81, %73
  %84 = load i64, i64* @now, align 8
  %85 = icmp ne i64 %84, 0
  br i1 %85, label %86, label %88

86:                                               ; preds = %83
  %87 = load i64, i64* @now, align 8
  br label %90

88:                                               ; preds = %83
  %89 = call i64 @time(i32 0)
  br label %90

90:                                               ; preds = %88, %86
  %91 = phi i64 [ %87, %86 ], [ %89, %88 ]
  %92 = load %struct.mc_config*, %struct.mc_config** @CurConf, align 8
  %93 = getelementptr inbounds %struct.mc_config, %struct.mc_config* %92, i32 0, i32 2
  store i64 %91, i64* %93, align 8
  %94 = load i32, i32* @config_bytes, align 4
  %95 = load %struct.mc_config*, %struct.mc_config** @CurConf, align 8
  %96 = getelementptr inbounds %struct.mc_config, %struct.mc_config* %95, i32 0, i32 1
  store i32 %94, i32* %96, align 8
  %97 = call i64* @zmalloc(i32 33)
  %98 = load %struct.mc_config*, %struct.mc_config** @CurConf, align 8
  %99 = getelementptr inbounds %struct.mc_config, %struct.mc_config* %98, i32 0, i32 0
  store i64* %97, i64** %99, align 8
  %100 = load i32, i32* @config_buff, align 4
  %101 = load i32, i32* @config_bytes, align 4
  %102 = load %struct.mc_config*, %struct.mc_config** @CurConf, align 8
  %103 = getelementptr inbounds %struct.mc_config, %struct.mc_config* %102, i32 0, i32 0
  %104 = load i64*, i64** %103, align 8
  %105 = call i32 @md5_hex(i32 %100, i32 %101, i64* %104)
  %106 = load %struct.mc_config*, %struct.mc_config** @CurConf, align 8
  %107 = getelementptr inbounds %struct.mc_config, %struct.mc_config* %106, i32 0, i32 0
  %108 = load i64*, i64** %107, align 8
  %109 = getelementptr inbounds i64, i64* %108, i64 32
  store i64 0, i64* %109, align 8
  %110 = load i8*, i8** @config_filename, align 8
  %111 = call i32 @vkprintf(i32 0, i8* getelementptr inbounds ([70 x i8], [70 x i8]* @.str.5, i64 0, i64 0), i8* %110)
  store i32 0, i32* %2, align 4
  br label %112

112:                                              ; preds = %90, %48, %39, %15
  %113 = load i32, i32* %2, align 4
  ret i32 %113
}

declare dso_local i64 @open(i8*, i32) #1

declare dso_local i32 @fprintf(i32, i8*, ...) #1

declare dso_local i32 @kdb_load_hosts(...) #1

declare dso_local i32 @parse_config(%struct.mc_config*, %struct.mc_config*, i32) #1

declare dso_local i32 @close(i64) #1

declare dso_local i32 @vkprintf(i32, i8*, i8*) #1

declare dso_local i32 @try_open_new_listening_sockets(%struct.mc_config*) #1

declare dso_local i32 @clear_config(%struct.mc_config*, i32) #1

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #2

declare dso_local i32 @transfer_listening_sockets(%struct.mc_config*, %struct.mc_config*) #1

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
