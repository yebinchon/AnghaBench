; ModuleID = '/home/carl/AnghaBench/libgit2/src/extr_odb_loose.c_foreach_object_dir_cb.c'
source_filename = "/home/carl/AnghaBench/libgit2/src/extr_odb_loose.c_foreach_object_dir_cb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i64 }
%struct.foreach_state = type { i32, i32 (i32*, i32)*, i64 }

@.str = private unnamed_addr constant [16 x i8] c"git_odb_foreach\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, %struct.TYPE_3__*)* @foreach_object_dir_cb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @foreach_object_dir_cb(i8* %0, %struct.TYPE_3__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca %struct.TYPE_3__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.foreach_state*, align 8
  store i8* %0, i8** %4, align 8
  store %struct.TYPE_3__* %1, %struct.TYPE_3__** %5, align 8
  %8 = load i8*, i8** %4, align 8
  %9 = bitcast i8* %8 to %struct.foreach_state*
  store %struct.foreach_state* %9, %struct.foreach_state** %7, align 8
  %10 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %11 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = load %struct.foreach_state*, %struct.foreach_state** %7, align 8
  %14 = getelementptr inbounds %struct.foreach_state, %struct.foreach_state* %13, i32 0, i32 2
  %15 = load i64, i64* %14, align 8
  %16 = add nsw i64 %12, %15
  %17 = call i64 @filename_to_oid(i32* %6, i64 %16)
  %18 = icmp slt i64 %17, 0
  br i1 %18, label %19, label %20

19:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %29

20:                                               ; preds = %2
  %21 = load %struct.foreach_state*, %struct.foreach_state** %7, align 8
  %22 = getelementptr inbounds %struct.foreach_state, %struct.foreach_state* %21, i32 0, i32 1
  %23 = load i32 (i32*, i32)*, i32 (i32*, i32)** %22, align 8
  %24 = load %struct.foreach_state*, %struct.foreach_state** %7, align 8
  %25 = getelementptr inbounds %struct.foreach_state, %struct.foreach_state* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = call i32 %23(i32* %6, i32 %26)
  %28 = call i32 @git_error_set_after_callback_function(i32 %27, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0))
  store i32 %28, i32* %3, align 4
  br label %29

29:                                               ; preds = %20, %19
  %30 = load i32, i32* %3, align 4
  ret i32 %30
}

declare dso_local i64 @filename_to_oid(i32*, i64) #1

declare dso_local i32 @git_error_set_after_callback_function(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
