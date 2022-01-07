; ModuleID = '/home/carl/AnghaBench/git/extr_refs.c_get_main_ref_store.c'
source_filename = "/home/carl/AnghaBench/git/extr_refs.c_get_main_ref_store.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ref_store = type { i32 }
%struct.repository = type { %struct.ref_store*, i32 }

@.str = private unnamed_addr constant [55 x i8] c"attempting to get main_ref_store outside of repository\00", align 1
@REF_STORE_ALL_CAPS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.ref_store* @get_main_ref_store(%struct.repository* %0) #0 {
  %2 = alloca %struct.ref_store*, align 8
  %3 = alloca %struct.repository*, align 8
  store %struct.repository* %0, %struct.repository** %3, align 8
  %4 = load %struct.repository*, %struct.repository** %3, align 8
  %5 = getelementptr inbounds %struct.repository, %struct.repository* %4, i32 0, i32 0
  %6 = load %struct.ref_store*, %struct.ref_store** %5, align 8
  %7 = icmp ne %struct.ref_store* %6, null
  br i1 %7, label %8, label %12

8:                                                ; preds = %1
  %9 = load %struct.repository*, %struct.repository** %3, align 8
  %10 = getelementptr inbounds %struct.repository, %struct.repository* %9, i32 0, i32 0
  %11 = load %struct.ref_store*, %struct.ref_store** %10, align 8
  store %struct.ref_store* %11, %struct.ref_store** %2, align 8
  br label %30

12:                                               ; preds = %1
  %13 = load %struct.repository*, %struct.repository** %3, align 8
  %14 = getelementptr inbounds %struct.repository, %struct.repository* %13, i32 0, i32 1
  %15 = load i32, i32* %14, align 8
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %19, label %17

17:                                               ; preds = %12
  %18 = call i32 @BUG(i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str, i64 0, i64 0))
  br label %19

19:                                               ; preds = %17, %12
  %20 = load %struct.repository*, %struct.repository** %3, align 8
  %21 = getelementptr inbounds %struct.repository, %struct.repository* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 8
  %23 = load i32, i32* @REF_STORE_ALL_CAPS, align 4
  %24 = call %struct.ref_store* @ref_store_init(i32 %22, i32 %23)
  %25 = load %struct.repository*, %struct.repository** %3, align 8
  %26 = getelementptr inbounds %struct.repository, %struct.repository* %25, i32 0, i32 0
  store %struct.ref_store* %24, %struct.ref_store** %26, align 8
  %27 = load %struct.repository*, %struct.repository** %3, align 8
  %28 = getelementptr inbounds %struct.repository, %struct.repository* %27, i32 0, i32 0
  %29 = load %struct.ref_store*, %struct.ref_store** %28, align 8
  store %struct.ref_store* %29, %struct.ref_store** %2, align 8
  br label %30

30:                                               ; preds = %19, %8
  %31 = load %struct.ref_store*, %struct.ref_store** %2, align 8
  ret %struct.ref_store* %31
}

declare dso_local i32 @BUG(i8*) #1

declare dso_local %struct.ref_store* @ref_store_init(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
