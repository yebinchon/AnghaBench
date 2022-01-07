; ModuleID = '/home/carl/AnghaBench/kphp-kdb/targ/extr_targ-data.c_user_clear_work.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/targ/extr_targ-data.c_user_clear_work.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { %struct.company*, i32 }
%struct.company = type { %struct.company*, i32, i32, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_3__*)* @user_clear_work to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @user_clear_work(%struct.TYPE_3__* %0) #0 {
  %2 = alloca %struct.TYPE_3__*, align 8
  %3 = alloca %struct.company*, align 8
  %4 = alloca %struct.company*, align 8
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %2, align 8
  %5 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %6 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %5, i32 0, i32 0
  %7 = load %struct.company*, %struct.company** %6, align 8
  store %struct.company* %7, %struct.company** %3, align 8
  br label %8

8:                                                ; preds = %39, %1
  %9 = load %struct.company*, %struct.company** %3, align 8
  %10 = icmp ne %struct.company* %9, null
  br i1 %10, label %11, label %41

11:                                               ; preds = %8
  %12 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %13 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %12, i32 0, i32 1
  %14 = load i32, i32* %13, align 8
  %15 = load %struct.company*, %struct.company** %3, align 8
  %16 = getelementptr inbounds %struct.company, %struct.company* %15, i32 0, i32 4
  %17 = load i32, i32* %16, align 4
  %18 = call i32 @delete_user_hashlist(i32 %14, i32 %17)
  %19 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %20 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 8
  %22 = load %struct.company*, %struct.company** %3, align 8
  %23 = getelementptr inbounds %struct.company, %struct.company* %22, i32 0, i32 3
  %24 = load i32, i32* %23, align 8
  %25 = call i32 @delete_user_hashlist(i32 %21, i32 %24)
  %26 = load %struct.company*, %struct.company** %3, align 8
  %27 = getelementptr inbounds %struct.company, %struct.company* %26, i32 0, i32 2
  %28 = load i32, i32* %27, align 4
  %29 = call i32 @exact_strfree(i32 %28)
  %30 = load %struct.company*, %struct.company** %3, align 8
  %31 = getelementptr inbounds %struct.company, %struct.company* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 8
  %33 = call i32 @exact_strfree(i32 %32)
  %34 = load %struct.company*, %struct.company** %3, align 8
  %35 = getelementptr inbounds %struct.company, %struct.company* %34, i32 0, i32 0
  %36 = load %struct.company*, %struct.company** %35, align 8
  store %struct.company* %36, %struct.company** %4, align 8
  %37 = load %struct.company*, %struct.company** %3, align 8
  %38 = call i32 @zfree(%struct.company* %37, i32 24)
  br label %39

39:                                               ; preds = %11
  %40 = load %struct.company*, %struct.company** %4, align 8
  store %struct.company* %40, %struct.company** %3, align 8
  br label %8

41:                                               ; preds = %8
  %42 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %43 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %42, i32 0, i32 0
  store %struct.company* null, %struct.company** %43, align 8
  ret void
}

declare dso_local i32 @delete_user_hashlist(i32, i32) #1

declare dso_local i32 @exact_strfree(i32) #1

declare dso_local i32 @zfree(%struct.company*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
