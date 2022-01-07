; ModuleID = '/home/carl/AnghaBench/lab/q3map2/common/extr_aselib.c_ASE_KeyMATERIAL_LIST.c'
source_filename = "/home/carl/AnghaBench/lab/q3map2/common/extr_aselib.c_ASE_KeyMATERIAL_LIST.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i64 }

@.str = private unnamed_addr constant [16 x i8] c"*MATERIAL_COUNT\00", align 1
@qfalse = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [21 x i8] c"..num materials: %s\0A\00", align 1
@s_token = common dso_local global i32 0, align 4
@MAX_ASE_MATERIALS = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [20 x i8] c"Too many materials!\00", align 1
@ase = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8
@.str.3 = private unnamed_addr constant [10 x i8] c"*MATERIAL\00", align 1
@.str.4 = private unnamed_addr constant [15 x i8] c"..material %d \00", align 1
@ASE_KeyMATERIAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*)* @ASE_KeyMATERIAL_LIST to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ASE_KeyMATERIAL_LIST(i8* %0) #0 {
  %2 = alloca i8*, align 8
  store i8* %0, i8** %2, align 8
  %3 = load i8*, i8** %2, align 8
  %4 = call i32 @strcmp(i8* %3, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0))
  %5 = icmp ne i32 %4, 0
  br i1 %5, label %20, label %6

6:                                                ; preds = %1
  %7 = load i32, i32* @qfalse, align 4
  %8 = call i32 @ASE_GetToken(i32 %7)
  %9 = load i32, i32* @s_token, align 4
  %10 = sext i32 %9 to i64
  %11 = inttoptr i64 %10 to i8*
  %12 = call i32 @VERBOSE(i8* %11)
  %13 = load i32, i32* @s_token, align 4
  %14 = call i64 @atoi(i32 %13)
  %15 = load i64, i64* @MAX_ASE_MATERIALS, align 8
  %16 = icmp sgt i64 %14, %15
  br i1 %16, label %17, label %19

17:                                               ; preds = %6
  %18 = call i32 @Error(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.2, i64 0, i64 0))
  br label %19

19:                                               ; preds = %17, %6
  store i64 0, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @ase, i32 0, i32 0), align 8
  br label %33

20:                                               ; preds = %1
  %21 = load i8*, i8** %2, align 8
  %22 = call i32 @strcmp(i8* %21, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.3, i64 0, i64 0))
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %32, label %24

24:                                               ; preds = %20
  %25 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @ase, i32 0, i32 0), align 8
  %26 = inttoptr i64 %25 to i8*
  %27 = call i32 @VERBOSE(i8* %26)
  %28 = load i32, i32* @ASE_KeyMATERIAL, align 4
  %29 = call i32 @ASE_ParseBracedBlock(i32 %28)
  %30 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @ase, i32 0, i32 0), align 8
  %31 = add nsw i64 %30, 1
  store i64 %31, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @ase, i32 0, i32 0), align 8
  br label %32

32:                                               ; preds = %24, %20
  br label %33

33:                                               ; preds = %32, %19
  ret void
}

declare dso_local i32 @strcmp(i8*, i8*) #1

declare dso_local i32 @ASE_GetToken(i32) #1

declare dso_local i32 @VERBOSE(i8*) #1

declare dso_local i64 @atoi(i32) #1

declare dso_local i32 @Error(i8*) #1

declare dso_local i32 @ASE_ParseBracedBlock(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
