; ModuleID = '/home/carl/AnghaBench/linux/arch/powerpc/mm/ptdump/extr_hashpagetable.c_dump_flag_info.c'
source_filename = "/home/carl/AnghaBench/linux/arch/powerpc/mm/ptdump/extr_hashpagetable.c_dump_flag_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pg_state = type { i32 }
%struct.flag_info = type { i32, i32, i32, i8*, i8*, i64 }

@.str = private unnamed_addr constant [10 x i8] c"  %s:%llx\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"  %s\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.pg_state*, %struct.flag_info*, i32, i32)* @dump_flag_info to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dump_flag_info(%struct.pg_state* %0, %struct.flag_info* %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.pg_state*, align 8
  %6 = alloca %struct.flag_info*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  store %struct.pg_state* %0, %struct.pg_state** %5, align 8
  store %struct.flag_info* %1, %struct.flag_info** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  store i32 0, i32* %9, align 4
  br label %12

12:                                               ; preds = %81, %4
  %13 = load i32, i32* %9, align 4
  %14 = load i32, i32* %8, align 4
  %15 = icmp ult i32 %13, %14
  br i1 %15, label %16, label %86

16:                                               ; preds = %12
  store i8* null, i8** %10, align 8
  %17 = load %struct.flag_info*, %struct.flag_info** %6, align 8
  %18 = getelementptr inbounds %struct.flag_info, %struct.flag_info* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %21, label %22

21:                                               ; preds = %16
  br label %81

22:                                               ; preds = %16
  %23 = load %struct.flag_info*, %struct.flag_info** %6, align 8
  %24 = getelementptr inbounds %struct.flag_info, %struct.flag_info* %23, i32 0, i32 5
  %25 = load i64, i64* %24, align 8
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %52

27:                                               ; preds = %22
  %28 = load i32, i32* %7, align 4
  %29 = load %struct.flag_info*, %struct.flag_info** %6, align 8
  %30 = getelementptr inbounds %struct.flag_info, %struct.flag_info* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 4
  %32 = and i32 %28, %31
  store i32 %32, i32* %11, align 4
  %33 = load %struct.flag_info*, %struct.flag_info** %6, align 8
  %34 = getelementptr inbounds %struct.flag_info, %struct.flag_info* %33, i32 0, i32 2
  %35 = load i32, i32* %34, align 8
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %43

37:                                               ; preds = %27
  %38 = load i32, i32* %11, align 4
  %39 = load %struct.flag_info*, %struct.flag_info** %6, align 8
  %40 = getelementptr inbounds %struct.flag_info, %struct.flag_info* %39, i32 0, i32 2
  %41 = load i32, i32* %40, align 8
  %42 = ashr i32 %38, %41
  store i32 %42, i32* %11, align 4
  br label %43

43:                                               ; preds = %37, %27
  %44 = load %struct.pg_state*, %struct.pg_state** %5, align 8
  %45 = getelementptr inbounds %struct.pg_state, %struct.pg_state* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = load %struct.flag_info*, %struct.flag_info** %6, align 8
  %48 = getelementptr inbounds %struct.flag_info, %struct.flag_info* %47, i32 0, i32 3
  %49 = load i8*, i8** %48, align 8
  %50 = load i32, i32* %11, align 4
  %51 = call i32 (i32, i8*, i8*, ...) @seq_printf(i32 %46, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i8* %49, i32 %50)
  br label %80

52:                                               ; preds = %22
  %53 = load i32, i32* %7, align 4
  %54 = load %struct.flag_info*, %struct.flag_info** %6, align 8
  %55 = getelementptr inbounds %struct.flag_info, %struct.flag_info* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 8
  %57 = and i32 %53, %56
  %58 = load %struct.flag_info*, %struct.flag_info** %6, align 8
  %59 = getelementptr inbounds %struct.flag_info, %struct.flag_info* %58, i32 0, i32 1
  %60 = load i32, i32* %59, align 4
  %61 = icmp eq i32 %57, %60
  br i1 %61, label %62, label %66

62:                                               ; preds = %52
  %63 = load %struct.flag_info*, %struct.flag_info** %6, align 8
  %64 = getelementptr inbounds %struct.flag_info, %struct.flag_info* %63, i32 0, i32 3
  %65 = load i8*, i8** %64, align 8
  store i8* %65, i8** %10, align 8
  br label %70

66:                                               ; preds = %52
  %67 = load %struct.flag_info*, %struct.flag_info** %6, align 8
  %68 = getelementptr inbounds %struct.flag_info, %struct.flag_info* %67, i32 0, i32 4
  %69 = load i8*, i8** %68, align 8
  store i8* %69, i8** %10, align 8
  br label %70

70:                                               ; preds = %66, %62
  %71 = load i8*, i8** %10, align 8
  %72 = icmp ne i8* %71, null
  br i1 %72, label %73, label %79

73:                                               ; preds = %70
  %74 = load %struct.pg_state*, %struct.pg_state** %5, align 8
  %75 = getelementptr inbounds %struct.pg_state, %struct.pg_state* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 4
  %77 = load i8*, i8** %10, align 8
  %78 = call i32 (i32, i8*, i8*, ...) @seq_printf(i32 %76, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i8* %77)
  br label %79

79:                                               ; preds = %73, %70
  br label %80

80:                                               ; preds = %79, %43
  br label %81

81:                                               ; preds = %80, %21
  %82 = load i32, i32* %9, align 4
  %83 = add i32 %82, 1
  store i32 %83, i32* %9, align 4
  %84 = load %struct.flag_info*, %struct.flag_info** %6, align 8
  %85 = getelementptr inbounds %struct.flag_info, %struct.flag_info* %84, i32 1
  store %struct.flag_info* %85, %struct.flag_info** %6, align 8
  br label %12

86:                                               ; preds = %12
  ret void
}

declare dso_local i32 @seq_printf(i32, i8*, i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
