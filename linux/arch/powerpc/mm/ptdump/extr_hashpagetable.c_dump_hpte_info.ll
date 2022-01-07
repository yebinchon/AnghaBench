; ModuleID = '/home/carl/AnghaBench/linux/arch/powerpc/mm/ptdump/extr_hashpagetable.c_dump_hpte_info.c'
source_filename = "/home/carl/AnghaBench/linux/arch/powerpc/mm/ptdump/extr_hashpagetable.c_dump_hpte_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pg_state = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64, i64 }

@.str = private unnamed_addr constant [14 x i8] c"---[ %s ]---\0A\00", align 1
@.str.1 = private unnamed_addr constant [8 x i8] c"0x%lx:\09\00", align 1
@.str.2 = private unnamed_addr constant [11 x i8] c"AVPN:%llx\09\00", align 1
@v_flag_array = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [12 x i8] c"  rpn: %lx\09\00", align 1
@r_flag_array = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [5 x i8] c"base\00", align 1
@.str.5 = private unnamed_addr constant [7 x i8] c"actual\00", align 1
@.str.6 = private unnamed_addr constant [12 x i8] c"LP enc: %lx\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.pg_state*, i64, i32, i32, i64, i32, i32, i64)* @dump_hpte_info to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dump_hpte_info(%struct.pg_state* %0, i64 %1, i32 %2, i32 %3, i64 %4, i32 %5, i32 %6, i64 %7) #0 {
  %9 = alloca %struct.pg_state*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i64, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i64, align 8
  %17 = alloca i32, align 4
  store %struct.pg_state* %0, %struct.pg_state** %9, align 8
  store i64 %1, i64* %10, align 8
  store i32 %2, i32* %11, align 4
  store i32 %3, i32* %12, align 4
  store i64 %4, i64* %13, align 8
  store i32 %5, i32* %14, align 4
  store i32 %6, i32* %15, align 4
  store i64 %7, i64* %16, align 8
  br label %18

18:                                               ; preds = %27, %8
  %19 = load i64, i64* %10, align 8
  %20 = load %struct.pg_state*, %struct.pg_state** %9, align 8
  %21 = getelementptr inbounds %struct.pg_state, %struct.pg_state* %20, i32 0, i32 1
  %22 = load %struct.TYPE_2__*, %struct.TYPE_2__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i64 1
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = icmp uge i64 %19, %25
  br i1 %26, label %27, label %41

27:                                               ; preds = %18
  %28 = load %struct.pg_state*, %struct.pg_state** %9, align 8
  %29 = getelementptr inbounds %struct.pg_state, %struct.pg_state* %28, i32 0, i32 1
  %30 = load %struct.TYPE_2__*, %struct.TYPE_2__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i32 1
  store %struct.TYPE_2__* %31, %struct.TYPE_2__** %29, align 8
  %32 = load %struct.pg_state*, %struct.pg_state** %9, align 8
  %33 = getelementptr inbounds %struct.pg_state, %struct.pg_state* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  %35 = load %struct.pg_state*, %struct.pg_state** %9, align 8
  %36 = getelementptr inbounds %struct.pg_state, %struct.pg_state* %35, i32 0, i32 1
  %37 = load %struct.TYPE_2__*, %struct.TYPE_2__** %36, align 8
  %38 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %37, i32 0, i32 1
  %39 = load i64, i64* %38, align 8
  %40 = call i32 @seq_printf(i32 %34, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i64 %39)
  br label %18

41:                                               ; preds = %18
  %42 = load %struct.pg_state*, %struct.pg_state** %9, align 8
  %43 = getelementptr inbounds %struct.pg_state, %struct.pg_state* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 8
  %45 = load i64, i64* %10, align 8
  %46 = call i32 @seq_printf(i32 %44, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), i64 %45)
  %47 = load %struct.pg_state*, %struct.pg_state** %9, align 8
  %48 = getelementptr inbounds %struct.pg_state, %struct.pg_state* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 8
  %50 = load i32, i32* %11, align 4
  %51 = call i64 @HPTE_V_AVPN_VAL(i32 %50)
  %52 = call i32 @seq_printf(i32 %49, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2, i64 0, i64 0), i64 %51)
  %53 = load %struct.pg_state*, %struct.pg_state** %9, align 8
  %54 = load i32, i32* @v_flag_array, align 4
  %55 = load i32, i32* %11, align 4
  %56 = load i32, i32* @v_flag_array, align 4
  %57 = call i32 @ARRAY_SIZE(i32 %56)
  %58 = call i32 @dump_flag_info(%struct.pg_state* %53, i32 %54, i32 %55, i32 %57)
  %59 = load %struct.pg_state*, %struct.pg_state** %9, align 8
  %60 = getelementptr inbounds %struct.pg_state, %struct.pg_state* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 8
  %62 = load i64, i64* %13, align 8
  %63 = call i32 @seq_printf(i32 %61, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.3, i64 0, i64 0), i64 %62)
  %64 = load %struct.pg_state*, %struct.pg_state** %9, align 8
  %65 = load i32, i32* @r_flag_array, align 4
  %66 = load i32, i32* %12, align 4
  %67 = load i32, i32* @r_flag_array, align 4
  %68 = call i32 @ARRAY_SIZE(i32 %67)
  %69 = call i32 @dump_flag_info(%struct.pg_state* %64, i32 %65, i32 %66, i32 %68)
  %70 = load %struct.pg_state*, %struct.pg_state** %9, align 8
  %71 = load i32, i32* %14, align 4
  %72 = call i32 @calculate_pagesize(%struct.pg_state* %70, i32 %71, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0))
  %73 = load %struct.pg_state*, %struct.pg_state** %9, align 8
  %74 = load i32, i32* %15, align 4
  %75 = call i32 @calculate_pagesize(%struct.pg_state* %73, i32 %74, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.5, i64 0, i64 0))
  store i32 %75, i32* %17, align 4
  %76 = load i32, i32* %17, align 4
  %77 = icmp ne i32 %76, 2
  br i1 %77, label %78, label %84

78:                                               ; preds = %41
  %79 = load %struct.pg_state*, %struct.pg_state** %9, align 8
  %80 = getelementptr inbounds %struct.pg_state, %struct.pg_state* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 8
  %82 = load i64, i64* %16, align 8
  %83 = call i32 @seq_printf(i32 %81, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.6, i64 0, i64 0), i64 %82)
  br label %84

84:                                               ; preds = %78, %41
  %85 = load %struct.pg_state*, %struct.pg_state** %9, align 8
  %86 = getelementptr inbounds %struct.pg_state, %struct.pg_state* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 8
  %88 = call i32 @seq_putc(i32 %87, i8 signext 10)
  ret void
}

declare dso_local i32 @seq_printf(i32, i8*, i64) #1

declare dso_local i64 @HPTE_V_AVPN_VAL(i32) #1

declare dso_local i32 @dump_flag_info(%struct.pg_state*, i32, i32, i32) #1

declare dso_local i32 @ARRAY_SIZE(i32) #1

declare dso_local i32 @calculate_pagesize(%struct.pg_state*, i32, i8*) #1

declare dso_local i32 @seq_putc(i32, i8 signext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
