; ModuleID = '/home/carl/AnghaBench/i3/src/extr_util.c_store_restart_layout.c'
source_filename = "/home/carl/AnghaBench/i3/src/extr_util.c_store_restart_layout.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32* }

@LC_NUMERIC = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [2 x i8] c"C\00", align 1
@croot = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@get_buf = common dso_local global i32 0, align 4
@config = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8
@.str.2 = private unnamed_addr constant [14 x i8] c"restart-state\00", align 1
@.str.3 = private unnamed_addr constant [46 x i8] c"Creating \22%s\22 for storing the restart layout\0A\00", align 1
@DEFAULT_DIR_MODE = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [76 x i8] c"Could not create \22%s\22 for storing the restart layout, layout will be lost.\0A\00", align 1
@O_WRONLY = common dso_local global i32 0, align 4
@O_CREAT = common dso_local global i32 0, align 4
@O_TRUNC = common dso_local global i32 0, align 4
@S_IRUSR = common dso_local global i32 0, align 4
@S_IWUSR = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [7 x i8] c"open()\00", align 1
@.str.6 = private unnamed_addr constant [65 x i8] c"Could not write restart layout to \22%s\22, layout will be lost: %s\0A\00", align 1
@errno = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [14 x i8] c"layout: %.*s\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* ()* @store_restart_layout to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @store_restart_layout() #0 {
  %1 = alloca i8*, align 8
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = load i32, i32* @LC_NUMERIC, align 4
  %10 = call i32 @setlocale(i32 %9, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  %11 = call i32 @yajl_gen_alloc(i32* null)
  store i32 %11, i32* %2, align 4
  %12 = load i32, i32* %2, align 4
  %13 = load i32, i32* @croot, align 4
  %14 = call i32 @dump_node(i32 %12, i32 %13, i32 1)
  %15 = load i32, i32* @LC_NUMERIC, align 4
  %16 = call i32 @setlocale(i32 %15, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i64 0, i64 0))
  %17 = load i32, i32* @get_buf, align 4
  %18 = sext i32 %17 to i64
  %19 = inttoptr i64 %18 to i32 (i8*)*
  %20 = call i32 (i32 (i8*)*, ...) @y(i32 (i8*)* %19, i8** %3, i64* %4)
  %21 = load i32*, i32** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @config, i32 0, i32 0), align 8
  %22 = icmp eq i32* %21, null
  br i1 %22, label %23, label %29

23:                                               ; preds = %0
  %24 = call i8* @get_process_filename(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.2, i64 0, i64 0))
  store i8* %24, i8** %5, align 8
  %25 = load i8*, i8** %5, align 8
  %26 = icmp ne i8* %25, null
  br i1 %26, label %28, label %27

27:                                               ; preds = %23
  store i8* null, i8** %1, align 8
  br label %93

28:                                               ; preds = %23
  br label %32

29:                                               ; preds = %0
  %30 = load i32*, i32** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @config, i32 0, i32 0), align 8
  %31 = call i8* @resolve_tilde(i32* %30)
  store i8* %31, i8** %5, align 8
  br label %32

32:                                               ; preds = %29, %28
  %33 = load i8*, i8** %5, align 8
  %34 = call i8* @sstrdup(i8* %33)
  store i8* %34, i8** %6, align 8
  %35 = load i8*, i8** %6, align 8
  %36 = call i8* @dirname(i8* %35)
  store i8* %36, i8** %7, align 8
  %37 = load i8*, i8** %7, align 8
  %38 = call i32 (i8*, ...) @DLOG(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.3, i64 0, i64 0), i8* %37)
  %39 = load i8*, i8** %7, align 8
  %40 = load i32, i32* @DEFAULT_DIR_MODE, align 4
  %41 = call i64 @mkdirp(i8* %39, i32 %40)
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %46

43:                                               ; preds = %32
  %44 = load i8*, i8** %7, align 8
  %45 = call i32 (i8*, i8*, ...) @ELOG(i8* getelementptr inbounds ([76 x i8], [76 x i8]* @.str.4, i64 0, i64 0), i8* %44)
  br label %46

46:                                               ; preds = %43, %32
  %47 = load i8*, i8** %6, align 8
  %48 = call i32 @free(i8* %47)
  %49 = load i8*, i8** %5, align 8
  %50 = load i32, i32* @O_WRONLY, align 4
  %51 = load i32, i32* @O_CREAT, align 4
  %52 = or i32 %50, %51
  %53 = load i32, i32* @O_TRUNC, align 4
  %54 = or i32 %52, %53
  %55 = load i32, i32* @S_IRUSR, align 4
  %56 = load i32, i32* @S_IWUSR, align 4
  %57 = or i32 %55, %56
  %58 = call i32 @open(i8* %49, i32 %54, i32 %57)
  store i32 %58, i32* %8, align 4
  %59 = load i32, i32* %8, align 4
  %60 = icmp eq i32 %59, -1
  br i1 %60, label %61, label %65

61:                                               ; preds = %46
  %62 = call i32 @perror(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.5, i64 0, i64 0))
  %63 = load i8*, i8** %5, align 8
  %64 = call i32 @free(i8* %63)
  store i8* null, i8** %1, align 8
  br label %93

65:                                               ; preds = %46
  %66 = load i32, i32* %8, align 4
  %67 = load i8*, i8** %3, align 8
  %68 = load i64, i64* %4, align 8
  %69 = call i32 @writeall(i32 %66, i8* %67, i64 %68)
  %70 = icmp eq i32 %69, -1
  br i1 %70, label %71, label %80

71:                                               ; preds = %65
  %72 = load i8*, i8** %5, align 8
  %73 = load i32, i32* @errno, align 4
  %74 = call i32 @strerror(i32 %73)
  %75 = call i32 (i8*, i8*, ...) @ELOG(i8* getelementptr inbounds ([65 x i8], [65 x i8]* @.str.6, i64 0, i64 0), i8* %72, i32 %74)
  %76 = load i8*, i8** %5, align 8
  %77 = call i32 @free(i8* %76)
  %78 = load i32, i32* %8, align 4
  %79 = call i32 @close(i32 %78)
  store i8* null, i8** %1, align 8
  br label %93

80:                                               ; preds = %65
  %81 = load i32, i32* %8, align 4
  %82 = call i32 @close(i32 %81)
  %83 = load i64, i64* %4, align 8
  %84 = icmp ugt i64 %83, 0
  br i1 %84, label %85, label %90

85:                                               ; preds = %80
  %86 = load i64, i64* %4, align 8
  %87 = trunc i64 %86 to i32
  %88 = load i8*, i8** %3, align 8
  %89 = call i32 (i8*, ...) @DLOG(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.7, i64 0, i64 0), i32 %87, i8* %88)
  br label %90

90:                                               ; preds = %85, %80
  %91 = call i32 (i32 (i8*)*, ...) @y(i32 (i8*)* @free)
  %92 = load i8*, i8** %5, align 8
  store i8* %92, i8** %1, align 8
  br label %93

93:                                               ; preds = %90, %71, %61, %27
  %94 = load i8*, i8** %1, align 8
  ret i8* %94
}

declare dso_local i32 @setlocale(i32, i8*) #1

declare dso_local i32 @yajl_gen_alloc(i32*) #1

declare dso_local i32 @dump_node(i32, i32, i32) #1

declare dso_local i32 @y(i32 (i8*)*, ...) #1

declare dso_local i8* @get_process_filename(i8*) #1

declare dso_local i8* @resolve_tilde(i32*) #1

declare dso_local i8* @sstrdup(i8*) #1

declare dso_local i8* @dirname(i8*) #1

declare dso_local i32 @DLOG(i8*, ...) #1

declare dso_local i64 @mkdirp(i8*, i32) #1

declare dso_local i32 @ELOG(i8*, i8*, ...) #1

declare dso_local i32 @free(i8*) #1

declare dso_local i32 @open(i8*, i32, i32) #1

declare dso_local i32 @perror(i8*) #1

declare dso_local i32 @writeall(i32, i8*, i64) #1

declare dso_local i32 @strerror(i32) #1

declare dso_local i32 @close(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
