; ModuleID = '/home/carl/AnghaBench/lede/tools/firmware-utils/src/extr_makeamitbin.c_show_fwids.c'
source_filename = "/home/carl/AnghaBench/lede/tools/firmware-utils/src/extr_makeamitbin.c_show_fwids.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [37 x i8] c"List of known firmware identifiers:\0A\00", align 1
@.str.1 = private unnamed_addr constant [35 x i8] c"Manufacturer\09\09Product\09\09Identifier\0A\00", align 1
@.str.2 = private unnamed_addr constant [55 x i8] c"=====================================================\0A\00", align 1
@.str.3 = private unnamed_addr constant [36 x i8] c"Conceptronic\09\09CHD2WLANU\09LLM_RUS001\0A\00", align 1
@.str.4 = private unnamed_addr constant [23 x i8] c"Pearl\09\09\09PE6643\09\09Queen\0A\00", align 1
@.str.5 = private unnamed_addr constant [26 x i8] c"Micronica\09\09MGB100\09\09Queen\0A\00", align 1
@.str.6 = private unnamed_addr constant [31 x i8] c"LevelOne\09\09WAP-0007\09DDC_RUS001\0A\00", align 1
@.str.7 = private unnamed_addr constant [26 x i8] c"SMC\09\09\09WAPS-G\09\09SMC_RUS001\0A\00", align 1
@.str.8 = private unnamed_addr constant [38 x i8] c"OvisLink (AirLive)\09WMU-6\09\09OVS_RUS001\0A\00", align 1
@.str.9 = private unnamed_addr constant [38 x i8] c"SafeCom SWSAPUR-5\09FMW\09\09Safeco_RPS001\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @show_fwids() #0 {
  %1 = call i32 @printf(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0))
  %2 = call i32 @printf(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.1, i64 0, i64 0))
  %3 = call i32 @printf(i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.2, i64 0, i64 0))
  %4 = call i32 @printf(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.3, i64 0, i64 0))
  %5 = call i32 @printf(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.4, i64 0, i64 0))
  %6 = call i32 @printf(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.5, i64 0, i64 0))
  %7 = call i32 @printf(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.6, i64 0, i64 0))
  %8 = call i32 @printf(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.7, i64 0, i64 0))
  %9 = call i32 @printf(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.8, i64 0, i64 0))
  %10 = call i32 @printf(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.9, i64 0, i64 0))
  %11 = call i32 @exit(i32 1) #3
  unreachable
}

declare dso_local i32 @printf(i8*) #1

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
