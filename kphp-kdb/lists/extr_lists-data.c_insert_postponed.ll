; ModuleID = '/home/carl/AnghaBench/kphp-kdb/lists/extr_lists-data.c_insert_postponed.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/lists/extr_lists-data.c_insert_postponed.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }
%struct.postponed_operation = type { i32, %struct.postponed_operation*, %struct.postponed_operation*, i32, i32 }
%struct.lev_generic = type { i32 }

@Header = common dso_local global %struct.TYPE_2__ zeroinitializer, align 4
@postponed_replay = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [66 x i8] c"Insert postponed: metafile_number = %d, lev_type = %d, size = %d\0A\00", align 1
@postponed_operations_total = common dso_local global i32 0, align 4
@postponed_operations_size = common dso_local global i32 0, align 4
@now = common dso_local global i32 0, align 4
@postponed = common dso_local global %struct.postponed_operation** null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @insert_postponed(i32 %0, %struct.lev_generic* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.lev_generic*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.postponed_operation*, align 8
  %8 = alloca %struct.postponed_operation*, align 8
  store i32 %0, i32* %4, align 4
  store %struct.lev_generic* %1, %struct.lev_generic** %5, align 8
  store i32 %2, i32* %6, align 4
  %9 = load i32, i32* %4, align 4
  %10 = icmp sle i32 0, %9
  br i1 %10, label %11, label %15

11:                                               ; preds = %3
  %12 = load i32, i32* %4, align 4
  %13 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @Header, i32 0, i32 0), align 4
  %14 = icmp slt i32 %12, %13
  br label %15

15:                                               ; preds = %11, %3
  %16 = phi i1 [ false, %3 ], [ %14, %11 ]
  %17 = zext i1 %16 to i32
  %18 = call i32 @assert(i32 %17)
  %19 = load i64, i64* @postponed_replay, align 8
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %22

21:                                               ; preds = %15
  br label %99

22:                                               ; preds = %15
  %23 = load i32, i32* %4, align 4
  %24 = load %struct.lev_generic*, %struct.lev_generic** %5, align 8
  %25 = getelementptr inbounds %struct.lev_generic, %struct.lev_generic* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = load i32, i32* %6, align 4
  %28 = call i32 @vkprintf(i32 4, i8* getelementptr inbounds ([66 x i8], [66 x i8]* @.str, i64 0, i64 0), i32 %23, i32 %26, i32 %27)
  %29 = load i32, i32* @postponed_operations_total, align 4
  %30 = add nsw i32 %29, 1
  store i32 %30, i32* @postponed_operations_total, align 4
  %31 = load i32, i32* %6, align 4
  %32 = sext i32 %31 to i64
  %33 = add i64 %32, 32
  %34 = trunc i64 %33 to i32
  %35 = call %struct.postponed_operation* @zmalloc(i32 %34)
  store %struct.postponed_operation* %35, %struct.postponed_operation** %7, align 8
  %36 = load i32, i32* %6, align 4
  %37 = sext i32 %36 to i64
  %38 = add i64 %37, 32
  %39 = load i32, i32* @postponed_operations_size, align 4
  %40 = sext i32 %39 to i64
  %41 = add i64 %40, %38
  %42 = trunc i64 %41 to i32
  store i32 %42, i32* @postponed_operations_size, align 4
  %43 = load i32, i32* %6, align 4
  %44 = load %struct.postponed_operation*, %struct.postponed_operation** %7, align 8
  %45 = getelementptr inbounds %struct.postponed_operation, %struct.postponed_operation* %44, i32 0, i32 0
  store i32 %43, i32* %45, align 8
  %46 = load %struct.postponed_operation*, %struct.postponed_operation** %7, align 8
  %47 = getelementptr inbounds %struct.postponed_operation, %struct.postponed_operation* %46, i32 0, i32 1
  store %struct.postponed_operation* null, %struct.postponed_operation** %47, align 8
  %48 = load %struct.postponed_operation*, %struct.postponed_operation** %7, align 8
  %49 = getelementptr inbounds %struct.postponed_operation, %struct.postponed_operation* %48, i32 0, i32 2
  store %struct.postponed_operation* null, %struct.postponed_operation** %49, align 8
  %50 = load i32, i32* @now, align 4
  %51 = load %struct.postponed_operation*, %struct.postponed_operation** %7, align 8
  %52 = getelementptr inbounds %struct.postponed_operation, %struct.postponed_operation* %51, i32 0, i32 4
  store i32 %50, i32* %52, align 4
  %53 = load %struct.postponed_operation*, %struct.postponed_operation** %7, align 8
  %54 = getelementptr inbounds %struct.postponed_operation, %struct.postponed_operation* %53, i32 0, i32 3
  %55 = load i32, i32* %54, align 8
  %56 = load %struct.lev_generic*, %struct.lev_generic** %5, align 8
  %57 = load i32, i32* %6, align 4
  %58 = call i32 @memcpy(i32 %55, %struct.lev_generic* %56, i32 %57)
  %59 = load %struct.postponed_operation**, %struct.postponed_operation*** @postponed, align 8
  %60 = load i32, i32* %4, align 4
  %61 = sext i32 %60 to i64
  %62 = getelementptr inbounds %struct.postponed_operation*, %struct.postponed_operation** %59, i64 %61
  %63 = load %struct.postponed_operation*, %struct.postponed_operation** %62, align 8
  %64 = icmp ne %struct.postponed_operation* %63, null
  br i1 %64, label %77, label %65

65:                                               ; preds = %22
  %66 = load %struct.postponed_operation*, %struct.postponed_operation** %7, align 8
  %67 = load %struct.postponed_operation**, %struct.postponed_operation*** @postponed, align 8
  %68 = load i32, i32* %4, align 4
  %69 = sext i32 %68 to i64
  %70 = getelementptr inbounds %struct.postponed_operation*, %struct.postponed_operation** %67, i64 %69
  store %struct.postponed_operation* %66, %struct.postponed_operation** %70, align 8
  %71 = load %struct.postponed_operation*, %struct.postponed_operation** %7, align 8
  %72 = load %struct.postponed_operation*, %struct.postponed_operation** %7, align 8
  %73 = getelementptr inbounds %struct.postponed_operation, %struct.postponed_operation* %72, i32 0, i32 1
  store %struct.postponed_operation* %71, %struct.postponed_operation** %73, align 8
  %74 = load %struct.postponed_operation*, %struct.postponed_operation** %7, align 8
  %75 = load %struct.postponed_operation*, %struct.postponed_operation** %7, align 8
  %76 = getelementptr inbounds %struct.postponed_operation, %struct.postponed_operation* %75, i32 0, i32 2
  store %struct.postponed_operation* %74, %struct.postponed_operation** %76, align 8
  br label %99

77:                                               ; preds = %22
  %78 = load %struct.postponed_operation**, %struct.postponed_operation*** @postponed, align 8
  %79 = load i32, i32* %4, align 4
  %80 = sext i32 %79 to i64
  %81 = getelementptr inbounds %struct.postponed_operation*, %struct.postponed_operation** %78, i64 %80
  %82 = load %struct.postponed_operation*, %struct.postponed_operation** %81, align 8
  store %struct.postponed_operation* %82, %struct.postponed_operation** %8, align 8
  %83 = load %struct.postponed_operation*, %struct.postponed_operation** %8, align 8
  %84 = getelementptr inbounds %struct.postponed_operation, %struct.postponed_operation* %83, i32 0, i32 2
  %85 = load %struct.postponed_operation*, %struct.postponed_operation** %84, align 8
  %86 = load %struct.postponed_operation*, %struct.postponed_operation** %7, align 8
  %87 = getelementptr inbounds %struct.postponed_operation, %struct.postponed_operation* %86, i32 0, i32 2
  store %struct.postponed_operation* %85, %struct.postponed_operation** %87, align 8
  %88 = load %struct.postponed_operation*, %struct.postponed_operation** %8, align 8
  %89 = load %struct.postponed_operation*, %struct.postponed_operation** %7, align 8
  %90 = getelementptr inbounds %struct.postponed_operation, %struct.postponed_operation* %89, i32 0, i32 1
  store %struct.postponed_operation* %88, %struct.postponed_operation** %90, align 8
  %91 = load %struct.postponed_operation*, %struct.postponed_operation** %7, align 8
  %92 = load %struct.postponed_operation*, %struct.postponed_operation** %8, align 8
  %93 = getelementptr inbounds %struct.postponed_operation, %struct.postponed_operation* %92, i32 0, i32 2
  store %struct.postponed_operation* %91, %struct.postponed_operation** %93, align 8
  %94 = load %struct.postponed_operation*, %struct.postponed_operation** %7, align 8
  %95 = load %struct.postponed_operation*, %struct.postponed_operation** %7, align 8
  %96 = getelementptr inbounds %struct.postponed_operation, %struct.postponed_operation* %95, i32 0, i32 2
  %97 = load %struct.postponed_operation*, %struct.postponed_operation** %96, align 8
  %98 = getelementptr inbounds %struct.postponed_operation, %struct.postponed_operation* %97, i32 0, i32 1
  store %struct.postponed_operation* %94, %struct.postponed_operation** %98, align 8
  br label %99

99:                                               ; preds = %21, %77, %65
  ret void
}

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @vkprintf(i32, i8*, i32, i32, i32) #1

declare dso_local %struct.postponed_operation* @zmalloc(i32) #1

declare dso_local i32 @memcpy(i32, %struct.lev_generic*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
