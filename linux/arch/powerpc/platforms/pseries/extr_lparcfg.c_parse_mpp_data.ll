; ModuleID = '/home/carl/AnghaBench/linux/arch/powerpc/platforms/pseries/extr_lparcfg.c_parse_mpp_data.c'
source_filename = "/home/carl/AnghaBench/linux/arch/powerpc/platforms/pseries/extr_lparcfg.c_parse_mpp_data.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.seq_file = type { i32 }
%struct.hvcall_mpp_data = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@.str = private unnamed_addr constant [21 x i8] c"entitled_memory=%ld\0A\00", align 1
@.str.1 = private unnamed_addr constant [28 x i8] c"mapped_entitled_memory=%ld\0A\00", align 1
@.str.2 = private unnamed_addr constant [33 x i8] c"entitled_memory_group_number=%d\0A\00", align 1
@.str.3 = private unnamed_addr constant [32 x i8] c"entitled_memory_pool_number=%d\0A\00", align 1
@.str.4 = private unnamed_addr constant [27 x i8] c"entitled_memory_weight=%d\0A\00", align 1
@.str.5 = private unnamed_addr constant [39 x i8] c"unallocated_entitled_memory_weight=%d\0A\00", align 1
@.str.6 = private unnamed_addr constant [40 x i8] c"unallocated_io_mapping_entitlement=%ld\0A\00", align 1
@.str.7 = private unnamed_addr constant [37 x i8] c"entitled_memory_pool_size=%ld bytes\0A\00", align 1
@.str.8 = private unnamed_addr constant [34 x i8] c"entitled_memory_loan_request=%ld\0A\00", align 1
@.str.9 = private unnamed_addr constant [26 x i8] c"backing_memory=%ld bytes\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.seq_file*)* @parse_mpp_data to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @parse_mpp_data(%struct.seq_file* %0) #0 {
  %2 = alloca %struct.seq_file*, align 8
  %3 = alloca %struct.hvcall_mpp_data, align 4
  %4 = alloca i32, align 4
  store %struct.seq_file* %0, %struct.seq_file** %2, align 8
  %5 = call i32 @h_get_mpp(%struct.hvcall_mpp_data* %3)
  store i32 %5, i32* %4, align 4
  %6 = load i32, i32* %4, align 4
  %7 = icmp ne i32 %6, 0
  br i1 %7, label %8, label %9

8:                                                ; preds = %1
  br label %60

9:                                                ; preds = %1
  %10 = load %struct.seq_file*, %struct.seq_file** %2, align 8
  %11 = getelementptr inbounds %struct.hvcall_mpp_data, %struct.hvcall_mpp_data* %3, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = call i32 @seq_printf(%struct.seq_file* %10, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 %12)
  %14 = getelementptr inbounds %struct.hvcall_mpp_data, %struct.hvcall_mpp_data* %3, i32 0, i32 1
  %15 = load i32, i32* %14, align 4
  %16 = icmp ne i32 %15, -1
  br i1 %16, label %17, label %22

17:                                               ; preds = %9
  %18 = load %struct.seq_file*, %struct.seq_file** %2, align 8
  %19 = getelementptr inbounds %struct.hvcall_mpp_data, %struct.hvcall_mpp_data* %3, i32 0, i32 1
  %20 = load i32, i32* %19, align 4
  %21 = call i32 @seq_printf(%struct.seq_file* %18, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0), i32 %20)
  br label %22

22:                                               ; preds = %17, %9
  %23 = load %struct.seq_file*, %struct.seq_file** %2, align 8
  %24 = getelementptr inbounds %struct.hvcall_mpp_data, %struct.hvcall_mpp_data* %3, i32 0, i32 2
  %25 = load i32, i32* %24, align 4
  %26 = call i32 @seq_printf(%struct.seq_file* %23, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.2, i64 0, i64 0), i32 %25)
  %27 = load %struct.seq_file*, %struct.seq_file** %2, align 8
  %28 = getelementptr inbounds %struct.hvcall_mpp_data, %struct.hvcall_mpp_data* %3, i32 0, i32 3
  %29 = load i32, i32* %28, align 4
  %30 = call i32 @seq_printf(%struct.seq_file* %27, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.3, i64 0, i64 0), i32 %29)
  %31 = load %struct.seq_file*, %struct.seq_file** %2, align 8
  %32 = getelementptr inbounds %struct.hvcall_mpp_data, %struct.hvcall_mpp_data* %3, i32 0, i32 4
  %33 = load i32, i32* %32, align 4
  %34 = call i32 @seq_printf(%struct.seq_file* %31, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.4, i64 0, i64 0), i32 %33)
  %35 = load %struct.seq_file*, %struct.seq_file** %2, align 8
  %36 = getelementptr inbounds %struct.hvcall_mpp_data, %struct.hvcall_mpp_data* %3, i32 0, i32 5
  %37 = load i32, i32* %36, align 4
  %38 = call i32 @seq_printf(%struct.seq_file* %35, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.5, i64 0, i64 0), i32 %37)
  %39 = load %struct.seq_file*, %struct.seq_file** %2, align 8
  %40 = getelementptr inbounds %struct.hvcall_mpp_data, %struct.hvcall_mpp_data* %3, i32 0, i32 6
  %41 = load i32, i32* %40, align 4
  %42 = call i32 @seq_printf(%struct.seq_file* %39, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.6, i64 0, i64 0), i32 %41)
  %43 = getelementptr inbounds %struct.hvcall_mpp_data, %struct.hvcall_mpp_data* %3, i32 0, i32 7
  %44 = load i32, i32* %43, align 4
  %45 = icmp ne i32 %44, -1
  br i1 %45, label %46, label %51

46:                                               ; preds = %22
  %47 = load %struct.seq_file*, %struct.seq_file** %2, align 8
  %48 = getelementptr inbounds %struct.hvcall_mpp_data, %struct.hvcall_mpp_data* %3, i32 0, i32 7
  %49 = load i32, i32* %48, align 4
  %50 = call i32 @seq_printf(%struct.seq_file* %47, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.7, i64 0, i64 0), i32 %49)
  br label %51

51:                                               ; preds = %46, %22
  %52 = load %struct.seq_file*, %struct.seq_file** %2, align 8
  %53 = getelementptr inbounds %struct.hvcall_mpp_data, %struct.hvcall_mpp_data* %3, i32 0, i32 8
  %54 = load i32, i32* %53, align 4
  %55 = call i32 @seq_printf(%struct.seq_file* %52, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.8, i64 0, i64 0), i32 %54)
  %56 = load %struct.seq_file*, %struct.seq_file** %2, align 8
  %57 = getelementptr inbounds %struct.hvcall_mpp_data, %struct.hvcall_mpp_data* %3, i32 0, i32 9
  %58 = load i32, i32* %57, align 4
  %59 = call i32 @seq_printf(%struct.seq_file* %56, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.9, i64 0, i64 0), i32 %58)
  br label %60

60:                                               ; preds = %51, %8
  ret void
}

declare dso_local i32 @h_get_mpp(%struct.hvcall_mpp_data*) #1

declare dso_local i32 @seq_printf(%struct.seq_file*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
