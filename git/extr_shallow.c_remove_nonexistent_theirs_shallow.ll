; ModuleID = '/home/carl/AnghaBench/git/extr_shallow.c_remove_nonexistent_theirs_shallow.c'
source_filename = "/home/carl/AnghaBench/git/extr_shallow.c_remove_nonexistent_theirs_shallow.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.shallow_info = type { i32, i32*, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.object_id* }
%struct.object_id = type { i32 }

@trace_shallow = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [44 x i8] c"shallow: remove_nonexistent_theirs_shallow\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @remove_nonexistent_theirs_shallow(%struct.shallow_info* %0) #0 {
  %2 = alloca %struct.shallow_info*, align 8
  %3 = alloca %struct.object_id*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.shallow_info* %0, %struct.shallow_info** %2, align 8
  %6 = load %struct.shallow_info*, %struct.shallow_info** %2, align 8
  %7 = getelementptr inbounds %struct.shallow_info, %struct.shallow_info* %6, i32 0, i32 2
  %8 = load %struct.TYPE_2__*, %struct.TYPE_2__** %7, align 8
  %9 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %8, i32 0, i32 0
  %10 = load %struct.object_id*, %struct.object_id** %9, align 8
  store %struct.object_id* %10, %struct.object_id** %3, align 8
  %11 = call i32 @trace_printf_key(i32* @trace_shallow, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str, i64 0, i64 0))
  store i32 0, i32* %5, align 4
  store i32 0, i32* %4, align 4
  br label %12

12:                                               ; preds = %53, %1
  %13 = load i32, i32* %4, align 4
  %14 = load %struct.shallow_info*, %struct.shallow_info** %2, align 8
  %15 = getelementptr inbounds %struct.shallow_info, %struct.shallow_info* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = icmp slt i32 %13, %16
  br i1 %17, label %18, label %56

18:                                               ; preds = %12
  %19 = load i32, i32* %4, align 4
  %20 = load i32, i32* %5, align 4
  %21 = icmp ne i32 %19, %20
  br i1 %21, label %22, label %36

22:                                               ; preds = %18
  %23 = load %struct.shallow_info*, %struct.shallow_info** %2, align 8
  %24 = getelementptr inbounds %struct.shallow_info, %struct.shallow_info* %23, i32 0, i32 1
  %25 = load i32*, i32** %24, align 8
  %26 = load i32, i32* %4, align 4
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds i32, i32* %25, i64 %27
  %29 = load i32, i32* %28, align 4
  %30 = load %struct.shallow_info*, %struct.shallow_info** %2, align 8
  %31 = getelementptr inbounds %struct.shallow_info, %struct.shallow_info* %30, i32 0, i32 1
  %32 = load i32*, i32** %31, align 8
  %33 = load i32, i32* %5, align 4
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds i32, i32* %32, i64 %34
  store i32 %29, i32* %35, align 4
  br label %36

36:                                               ; preds = %22, %18
  %37 = load %struct.object_id*, %struct.object_id** %3, align 8
  %38 = load %struct.shallow_info*, %struct.shallow_info** %2, align 8
  %39 = getelementptr inbounds %struct.shallow_info, %struct.shallow_info* %38, i32 0, i32 1
  %40 = load i32*, i32** %39, align 8
  %41 = load i32, i32* %4, align 4
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds i32, i32* %40, i64 %42
  %44 = load i32, i32* %43, align 4
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds %struct.object_id, %struct.object_id* %37, i64 %45
  %47 = call i64 @has_object_file(%struct.object_id* %46)
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %52

49:                                               ; preds = %36
  %50 = load i32, i32* %5, align 4
  %51 = add nsw i32 %50, 1
  store i32 %51, i32* %5, align 4
  br label %52

52:                                               ; preds = %49, %36
  br label %53

53:                                               ; preds = %52
  %54 = load i32, i32* %4, align 4
  %55 = add nsw i32 %54, 1
  store i32 %55, i32* %4, align 4
  br label %12

56:                                               ; preds = %12
  %57 = load i32, i32* %5, align 4
  %58 = load %struct.shallow_info*, %struct.shallow_info** %2, align 8
  %59 = getelementptr inbounds %struct.shallow_info, %struct.shallow_info* %58, i32 0, i32 0
  store i32 %57, i32* %59, align 8
  ret void
}

declare dso_local i32 @trace_printf_key(i32*, i8*) #1

declare dso_local i64 @has_object_file(%struct.object_id*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
