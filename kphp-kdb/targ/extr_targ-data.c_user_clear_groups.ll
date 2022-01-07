; ModuleID = '/home/carl/AnghaBench/kphp-kdb/targ/extr_targ-data.c_user_clear_groups.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/targ/extr_targ-data.c_user_clear_groups.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { %struct.user_groups* }
%struct.user_groups = type { i32, i32, i32* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_4__*)* @user_clear_groups to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @user_clear_groups(%struct.TYPE_4__* %0) #0 {
  %2 = alloca %struct.TYPE_4__*, align 8
  %3 = alloca %struct.user_groups*, align 8
  %4 = alloca i32, align 4
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %2, align 8
  %5 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %6 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %5, i32 0, i32 0
  %7 = load %struct.user_groups*, %struct.user_groups** %6, align 8
  store %struct.user_groups* %7, %struct.user_groups** %3, align 8
  %8 = load %struct.user_groups*, %struct.user_groups** %3, align 8
  %9 = icmp ne %struct.user_groups* %8, null
  br i1 %9, label %10, label %40

10:                                               ; preds = %1
  store i32 0, i32* %4, align 4
  br label %11

11:                                               ; preds = %27, %10
  %12 = load i32, i32* %4, align 4
  %13 = load %struct.user_groups*, %struct.user_groups** %3, align 8
  %14 = getelementptr inbounds %struct.user_groups, %struct.user_groups* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = icmp slt i32 %12, %15
  br i1 %16, label %17, label %30

17:                                               ; preds = %11
  %18 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %19 = load %struct.user_groups*, %struct.user_groups** %3, align 8
  %20 = getelementptr inbounds %struct.user_groups, %struct.user_groups* %19, i32 0, i32 2
  %21 = load i32*, i32** %20, align 8
  %22 = load i32, i32* %4, align 4
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds i32, i32* %21, i64 %23
  %25 = load i32, i32* %24, align 4
  %26 = call i32 @del_user_group(%struct.TYPE_4__* %18, i32 %25)
  br label %27

27:                                               ; preds = %17
  %28 = load i32, i32* %4, align 4
  %29 = add nsw i32 %28, 1
  store i32 %29, i32* %4, align 4
  br label %11

30:                                               ; preds = %11
  %31 = load %struct.user_groups*, %struct.user_groups** %3, align 8
  %32 = load %struct.user_groups*, %struct.user_groups** %3, align 8
  %33 = getelementptr inbounds %struct.user_groups, %struct.user_groups* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 4
  %35 = mul nsw i32 %34, 4
  %36 = sext i32 %35 to i64
  %37 = add i64 16, %36
  %38 = trunc i64 %37 to i32
  %39 = call i32 @zfree(%struct.user_groups* %31, i32 %38)
  br label %40

40:                                               ; preds = %30, %1
  %41 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %42 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %41, i32 0, i32 0
  store %struct.user_groups* null, %struct.user_groups** %42, align 8
  ret void
}

declare dso_local i32 @del_user_group(%struct.TYPE_4__*, i32) #1

declare dso_local i32 @zfree(%struct.user_groups*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
