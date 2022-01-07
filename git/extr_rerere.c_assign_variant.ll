; ModuleID = '/home/carl/AnghaBench/git/extr_rerere.c_assign_variant.c'
source_filename = "/home/carl/AnghaBench/git/extr_rerere.c_assign_variant.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rerere_id = type { i32, %struct.rerere_dir* }
%struct.rerere_dir = type { i32, i32* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.rerere_id*)* @assign_variant to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @assign_variant(%struct.rerere_id* %0) #0 {
  %2 = alloca %struct.rerere_id*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.rerere_dir*, align 8
  store %struct.rerere_id* %0, %struct.rerere_id** %2, align 8
  %5 = load %struct.rerere_id*, %struct.rerere_id** %2, align 8
  %6 = getelementptr inbounds %struct.rerere_id, %struct.rerere_id* %5, i32 0, i32 1
  %7 = load %struct.rerere_dir*, %struct.rerere_dir** %6, align 8
  store %struct.rerere_dir* %7, %struct.rerere_dir** %4, align 8
  %8 = load %struct.rerere_id*, %struct.rerere_id** %2, align 8
  %9 = getelementptr inbounds %struct.rerere_id, %struct.rerere_id* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 8
  store i32 %10, i32* %3, align 4
  %11 = load i32, i32* %3, align 4
  %12 = icmp slt i32 %11, 0
  br i1 %12, label %13, label %35

13:                                               ; preds = %1
  store i32 0, i32* %3, align 4
  br label %14

14:                                               ; preds = %31, %13
  %15 = load i32, i32* %3, align 4
  %16 = load %struct.rerere_dir*, %struct.rerere_dir** %4, align 8
  %17 = getelementptr inbounds %struct.rerere_dir, %struct.rerere_dir* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = icmp slt i32 %15, %18
  br i1 %19, label %20, label %34

20:                                               ; preds = %14
  %21 = load %struct.rerere_dir*, %struct.rerere_dir** %4, align 8
  %22 = getelementptr inbounds %struct.rerere_dir, %struct.rerere_dir* %21, i32 0, i32 1
  %23 = load i32*, i32** %22, align 8
  %24 = load i32, i32* %3, align 4
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds i32, i32* %23, i64 %25
  %27 = load i32, i32* %26, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %30, label %29

29:                                               ; preds = %20
  br label %34

30:                                               ; preds = %20
  br label %31

31:                                               ; preds = %30
  %32 = load i32, i32* %3, align 4
  %33 = add nsw i32 %32, 1
  store i32 %33, i32* %3, align 4
  br label %14

34:                                               ; preds = %29, %14
  br label %35

35:                                               ; preds = %34, %1
  %36 = load %struct.rerere_dir*, %struct.rerere_dir** %4, align 8
  %37 = load i32, i32* %3, align 4
  %38 = call i32 @fit_variant(%struct.rerere_dir* %36, i32 %37)
  %39 = load i32, i32* %3, align 4
  %40 = load %struct.rerere_id*, %struct.rerere_id** %2, align 8
  %41 = getelementptr inbounds %struct.rerere_id, %struct.rerere_id* %40, i32 0, i32 0
  store i32 %39, i32* %41, align 8
  ret void
}

declare dso_local i32 @fit_variant(%struct.rerere_dir*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
