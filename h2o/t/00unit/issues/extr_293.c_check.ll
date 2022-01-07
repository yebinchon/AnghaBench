; ModuleID = '/home/carl/AnghaBench/h2o/t/00unit/issues/extr_293.c_check.c'
source_filename = "/home/carl/AnghaBench/h2o/t/00unit/issues/extr_293.c_check.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_14__ = type { %struct.TYPE_16__* }
%struct.TYPE_16__ = type { i32 }
%struct.TYPE_22__ = type { %struct.TYPE_21__ }
%struct.TYPE_21__ = type { %struct.TYPE_20__, %struct.TYPE_17__ }
%struct.TYPE_20__ = type { i32, %struct.TYPE_15__ }
%struct.TYPE_15__ = type { %struct.TYPE_19__* }
%struct.TYPE_19__ = type { %struct.TYPE_18__ }
%struct.TYPE_18__ = type { i32, i32 }
%struct.TYPE_17__ = type { i8*, i8*, i32*, i8* }

@ctx = common dso_local global %struct.TYPE_14__ zeroinitializer, align 8
@.str = private unnamed_addr constant [4 x i8] c"GET\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"/\00", align 1
@.str.2 = private unnamed_addr constant [12 x i8] c"x-authority\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i8*, i8*)* @check to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @check(i32* %0, i8* %1, i8* %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.TYPE_22__*, align 8
  %8 = alloca i32, align 4
  store i32* %0, i32** %4, align 8
  store i8* %1, i8** %5, align 8
  store i8* %2, i8** %6, align 8
  %9 = load %struct.TYPE_16__*, %struct.TYPE_16__** getelementptr inbounds (%struct.TYPE_14__, %struct.TYPE_14__* @ctx, i32 0, i32 0), align 8
  %10 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = call %struct.TYPE_22__* @h2o_loopback_create(%struct.TYPE_14__* @ctx, i32 %11)
  store %struct.TYPE_22__* %12, %struct.TYPE_22__** %7, align 8
  %13 = call i32 @H2O_STRLIT(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0))
  %14 = sext i32 %13 to i64
  %15 = inttoptr i64 %14 to i8*
  %16 = call i8* (i8*, ...) @h2o_iovec_init(i8* %15)
  %17 = load %struct.TYPE_22__*, %struct.TYPE_22__** %7, align 8
  %18 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %18, i32 0, i32 1
  %20 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %19, i32 0, i32 3
  store i8* %16, i8** %20, align 8
  %21 = load i32*, i32** %4, align 8
  %22 = load %struct.TYPE_22__*, %struct.TYPE_22__** %7, align 8
  %23 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %23, i32 0, i32 1
  %25 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %24, i32 0, i32 2
  store i32* %21, i32** %25, align 8
  %26 = load i8*, i8** %5, align 8
  %27 = load i8*, i8** %5, align 8
  %28 = call i32 @strlen(i8* %27)
  %29 = call i8* (i8*, ...) @h2o_iovec_init(i8* %26, i32 %28)
  %30 = load %struct.TYPE_22__*, %struct.TYPE_22__** %7, align 8
  %31 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %31, i32 0, i32 1
  %33 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %32, i32 0, i32 1
  store i8* %29, i8** %33, align 8
  %34 = call i32 @H2O_STRLIT(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  %35 = sext i32 %34 to i64
  %36 = inttoptr i64 %35 to i8*
  %37 = call i8* (i8*, ...) @h2o_iovec_init(i8* %36)
  %38 = load %struct.TYPE_22__*, %struct.TYPE_22__** %7, align 8
  %39 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %38, i32 0, i32 0
  %40 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %39, i32 0, i32 1
  %41 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %40, i32 0, i32 0
  store i8* %37, i8** %41, align 8
  %42 = load %struct.TYPE_22__*, %struct.TYPE_22__** %7, align 8
  %43 = call i32 @h2o_loopback_run_loop(%struct.TYPE_22__* %42)
  %44 = load %struct.TYPE_22__*, %struct.TYPE_22__** %7, align 8
  %45 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %44, i32 0, i32 0
  %46 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %45, i32 0, i32 0
  %47 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 8
  %49 = icmp eq i32 %48, 200
  %50 = zext i1 %49 to i32
  %51 = call i32 @ok(i32 %50)
  %52 = load %struct.TYPE_22__*, %struct.TYPE_22__** %7, align 8
  %53 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %52, i32 0, i32 0
  %54 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %53, i32 0, i32 0
  %55 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %54, i32 0, i32 1
  %56 = call i32 @H2O_STRLIT(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.2, i64 0, i64 0))
  %57 = call i32 @h2o_find_header_by_str(%struct.TYPE_15__* %55, i32 %56, i32 -1)
  store i32 %57, i32* %8, align 4
  %58 = load i32, i32* %8, align 4
  %59 = icmp ne i32 %58, -1
  %60 = zext i1 %59 to i32
  %61 = call i32 @ok(i32 %60)
  %62 = load i32, i32* %8, align 4
  %63 = icmp ne i32 %62, -1
  br i1 %63, label %64, label %94

64:                                               ; preds = %3
  %65 = load %struct.TYPE_22__*, %struct.TYPE_22__** %7, align 8
  %66 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %65, i32 0, i32 0
  %67 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %66, i32 0, i32 0
  %68 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %67, i32 0, i32 1
  %69 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %68, i32 0, i32 0
  %70 = load %struct.TYPE_19__*, %struct.TYPE_19__** %69, align 8
  %71 = load i32, i32* %8, align 4
  %72 = sext i32 %71 to i64
  %73 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %70, i64 %72
  %74 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %73, i32 0, i32 0
  %75 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %74, i32 0, i32 1
  %76 = load i32, i32* %75, align 4
  %77 = load %struct.TYPE_22__*, %struct.TYPE_22__** %7, align 8
  %78 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %77, i32 0, i32 0
  %79 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %78, i32 0, i32 0
  %80 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %79, i32 0, i32 1
  %81 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %80, i32 0, i32 0
  %82 = load %struct.TYPE_19__*, %struct.TYPE_19__** %81, align 8
  %83 = load i32, i32* %8, align 4
  %84 = sext i32 %83 to i64
  %85 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %82, i64 %84
  %86 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %85, i32 0, i32 0
  %87 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 4
  %89 = load i8*, i8** %6, align 8
  %90 = load i8*, i8** %6, align 8
  %91 = call i32 @strlen(i8* %90)
  %92 = call i32 @h2o_memis(i32 %76, i32 %88, i8* %89, i32 %91)
  %93 = call i32 @ok(i32 %92)
  br label %94

94:                                               ; preds = %64, %3
  %95 = load %struct.TYPE_22__*, %struct.TYPE_22__** %7, align 8
  %96 = call i32 @h2o_loopback_destroy(%struct.TYPE_22__* %95)
  ret void
}

declare dso_local %struct.TYPE_22__* @h2o_loopback_create(%struct.TYPE_14__*, i32) #1

declare dso_local i8* @h2o_iovec_init(i8*, ...) #1

declare dso_local i32 @H2O_STRLIT(i8*) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @h2o_loopback_run_loop(%struct.TYPE_22__*) #1

declare dso_local i32 @ok(i32) #1

declare dso_local i32 @h2o_find_header_by_str(%struct.TYPE_15__*, i32, i32) #1

declare dso_local i32 @h2o_memis(i32, i32, i8*, i32) #1

declare dso_local i32 @h2o_loopback_destroy(%struct.TYPE_22__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
