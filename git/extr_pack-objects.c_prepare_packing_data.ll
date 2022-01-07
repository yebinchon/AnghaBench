; ModuleID = '/home/carl/AnghaBench/git/extr_pack-objects.c_prepare_packing_data.c'
source_filename = "/home/carl/AnghaBench/git/extr_pack-objects.c_prepare_packing_data.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.repository = type { i32 }
%struct.packing_data = type { i32, i8*, i8*, %struct.repository* }

@.str = private unnamed_addr constant [28 x i8] c"GIT_TEST_FULL_IN_PACK_ARRAY\00", align 1
@.str.1 = private unnamed_addr constant [17 x i8] c"GIT_TEST_OE_SIZE\00", align 1
@OE_SIZE_BITS = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [23 x i8] c"GIT_TEST_OE_DELTA_SIZE\00", align 1
@OE_DELTA_SIZE_BITS = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @prepare_packing_data(%struct.repository* %0, %struct.packing_data* %1) #0 {
  %3 = alloca %struct.repository*, align 8
  %4 = alloca %struct.packing_data*, align 8
  store %struct.repository* %0, %struct.repository** %3, align 8
  store %struct.packing_data* %1, %struct.packing_data** %4, align 8
  %5 = load %struct.repository*, %struct.repository** %3, align 8
  %6 = load %struct.packing_data*, %struct.packing_data** %4, align 8
  %7 = getelementptr inbounds %struct.packing_data, %struct.packing_data* %6, i32 0, i32 3
  store %struct.repository* %5, %struct.repository** %7, align 8
  %8 = call i64 @git_env_bool(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0), i32 0)
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %10, label %11

10:                                               ; preds = %2
  br label %14

11:                                               ; preds = %2
  %12 = load %struct.packing_data*, %struct.packing_data** %4, align 8
  %13 = call i32 @prepare_in_pack_by_idx(%struct.packing_data* %12)
  br label %14

14:                                               ; preds = %11, %10
  %15 = load i32, i32* @OE_SIZE_BITS, align 4
  %16 = shl i32 1, %15
  %17 = zext i32 %16 to i64
  %18 = call i8* @git_env_ulong(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i64 0, i64 0), i64 %17)
  %19 = load %struct.packing_data*, %struct.packing_data** %4, align 8
  %20 = getelementptr inbounds %struct.packing_data, %struct.packing_data* %19, i32 0, i32 2
  store i8* %18, i8** %20, align 8
  %21 = load i64, i64* @OE_DELTA_SIZE_BITS, align 8
  %22 = shl i64 1, %21
  %23 = call i8* @git_env_ulong(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.2, i64 0, i64 0), i64 %22)
  %24 = load %struct.packing_data*, %struct.packing_data** %4, align 8
  %25 = getelementptr inbounds %struct.packing_data, %struct.packing_data* %24, i32 0, i32 1
  store i8* %23, i8** %25, align 8
  %26 = load %struct.packing_data*, %struct.packing_data** %4, align 8
  %27 = getelementptr inbounds %struct.packing_data, %struct.packing_data* %26, i32 0, i32 0
  %28 = call i32 @init_recursive_mutex(i32* %27)
  ret void
}

declare dso_local i64 @git_env_bool(i8*, i32) #1

declare dso_local i32 @prepare_in_pack_by_idx(%struct.packing_data*) #1

declare dso_local i8* @git_env_ulong(i8*, i64) #1

declare dso_local i32 @init_recursive_mutex(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
