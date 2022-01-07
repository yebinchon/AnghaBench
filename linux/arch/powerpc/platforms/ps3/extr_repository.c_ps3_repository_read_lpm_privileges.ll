; ModuleID = '/home/carl/AnghaBench/linux/arch/powerpc/platforms/ps3/extr_repository.c_ps3_repository_read_lpm_privileges.c'
source_filename = "/home/carl/AnghaBench/linux/arch/powerpc/platforms/ps3/extr_repository.c_ps3_repository_read_lpm_privileges.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@PS3_LPAR_ID_PME = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [3 x i8] c"be\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"lpm\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"priv\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ps3_repository_read_lpm_privileges(i32 %0, i64* %1, i64* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i64*, align 8
  %6 = alloca i64*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  store i32 %0, i32* %4, align 4
  store i64* %1, i64** %5, align 8
  store i64* %2, i64** %6, align 8
  %9 = load i64*, i64** %5, align 8
  store i64 0, i64* %9, align 8
  %10 = load i64*, i64** %6, align 8
  store i64 0, i64* %10, align 8
  %11 = load i32, i32* %4, align 4
  %12 = call i32 @ps3_repository_read_be_node_id(i32 %11, i64* %8)
  store i32 %12, i32* %7, align 4
  %13 = load i32, i32* %7, align 4
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %17

15:                                               ; preds = %3
  %16 = load i32, i32* %7, align 4
  br label %26

17:                                               ; preds = %3
  %18 = load i32, i32* @PS3_LPAR_ID_PME, align 4
  %19 = call i32 @make_first_field(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i32 0)
  %20 = load i64, i64* %8, align 8
  %21 = call i32 @make_field(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i32 0)
  %22 = call i32 @make_field(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0), i32 0)
  %23 = load i64*, i64** %5, align 8
  %24 = load i64*, i64** %6, align 8
  %25 = call i32 @read_node(i32 %18, i32 %19, i64 %20, i32 %21, i32 %22, i64* %23, i64* %24)
  br label %26

26:                                               ; preds = %17, %15
  %27 = phi i32 [ %16, %15 ], [ %25, %17 ]
  ret i32 %27
}

declare dso_local i32 @ps3_repository_read_be_node_id(i32, i64*) #1

declare dso_local i32 @read_node(i32, i32, i64, i32, i32, i64*, i64*) #1

declare dso_local i32 @make_first_field(i8*, i32) #1

declare dso_local i32 @make_field(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
