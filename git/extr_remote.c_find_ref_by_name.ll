; ModuleID = '/home/carl/AnghaBench/git/extr_remote.c_find_ref_by_name.c'
source_filename = "/home/carl/AnghaBench/git/extr_remote.c_find_ref_by_name.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ref = type { i32, %struct.ref* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.ref* @find_ref_by_name(%struct.ref* %0, i8* %1) #0 {
  %3 = alloca %struct.ref*, align 8
  %4 = alloca %struct.ref*, align 8
  %5 = alloca i8*, align 8
  store %struct.ref* %0, %struct.ref** %4, align 8
  store i8* %1, i8** %5, align 8
  br label %6

6:                                                ; preds = %19, %2
  %7 = load %struct.ref*, %struct.ref** %4, align 8
  %8 = icmp ne %struct.ref* %7, null
  br i1 %8, label %9, label %23

9:                                                ; preds = %6
  %10 = load %struct.ref*, %struct.ref** %4, align 8
  %11 = getelementptr inbounds %struct.ref, %struct.ref* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  %13 = load i8*, i8** %5, align 8
  %14 = call i32 @strcmp(i32 %12, i8* %13)
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %18, label %16

16:                                               ; preds = %9
  %17 = load %struct.ref*, %struct.ref** %4, align 8
  store %struct.ref* %17, %struct.ref** %3, align 8
  br label %24

18:                                               ; preds = %9
  br label %19

19:                                               ; preds = %18
  %20 = load %struct.ref*, %struct.ref** %4, align 8
  %21 = getelementptr inbounds %struct.ref, %struct.ref* %20, i32 0, i32 1
  %22 = load %struct.ref*, %struct.ref** %21, align 8
  store %struct.ref* %22, %struct.ref** %4, align 8
  br label %6

23:                                               ; preds = %6
  store %struct.ref* null, %struct.ref** %3, align 8
  br label %24

24:                                               ; preds = %23, %16
  %25 = load %struct.ref*, %struct.ref** %3, align 8
  ret %struct.ref* %25
}

declare dso_local i32 @strcmp(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
