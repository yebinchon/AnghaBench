; ModuleID = '/home/carl/AnghaBench/goaccess/src/extr_sort.c_get_sort_field_key.c'
source_filename = "/home/carl/AnghaBench/goaccess/src/extr_sort.c_get_sort_field_key.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@get_sort_field_key.field2key = internal global [9 x [2 x i8*]] [[2 x i8*] [i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i32 0, i32 0)], [2 x i8*] [i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i32 0, i32 0)], [2 x i8*] [i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.4, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i32 0, i32 0)], [2 x i8*] [i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.7, i32 0, i32 0)], [2 x i8*] [i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.8, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.9, i32 0, i32 0)], [2 x i8*] [i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.10, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.11, i32 0, i32 0)], [2 x i8*] [i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.12, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.13, i32 0, i32 0)], [2 x i8*] [i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.14, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.15, i32 0, i32 0)], [2 x i8*] [i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.16, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.17, i32 0, i32 0)]], align 16
@.str = private unnamed_addr constant [8 x i8] c"BY_HITS\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"hits\00", align 1
@.str.2 = private unnamed_addr constant [12 x i8] c"BY_VISITORS\00", align 1
@.str.3 = private unnamed_addr constant [9 x i8] c"visitors\00", align 1
@.str.4 = private unnamed_addr constant [8 x i8] c"BY_DATA\00", align 1
@.str.5 = private unnamed_addr constant [5 x i8] c"data\00", align 1
@.str.6 = private unnamed_addr constant [6 x i8] c"BY_BW\00", align 1
@.str.7 = private unnamed_addr constant [6 x i8] c"bytes\00", align 1
@.str.8 = private unnamed_addr constant [9 x i8] c"BY_AVGTS\00", align 1
@.str.9 = private unnamed_addr constant [6 x i8] c"avgts\00", align 1
@.str.10 = private unnamed_addr constant [9 x i8] c"BY_CUMTS\00", align 1
@.str.11 = private unnamed_addr constant [6 x i8] c"cumts\00", align 1
@.str.12 = private unnamed_addr constant [9 x i8] c"BY_MAXTS\00", align 1
@.str.13 = private unnamed_addr constant [6 x i8] c"maxts\00", align 1
@.str.14 = private unnamed_addr constant [8 x i8] c"BY_PROT\00", align 1
@.str.15 = private unnamed_addr constant [9 x i8] c"protocol\00", align 1
@.str.16 = private unnamed_addr constant [8 x i8] c"BY_MTHD\00", align 1
@.str.17 = private unnamed_addr constant [7 x i8] c"method\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @get_sort_field_key(i64 %0) #0 {
  %2 = alloca i64, align 8
  store i64 %0, i64* %2, align 8
  %3 = load i64, i64* %2, align 8
  %4 = getelementptr inbounds [9 x [2 x i8*]], [9 x [2 x i8*]]* @get_sort_field_key.field2key, i64 0, i64 %3
  %5 = getelementptr inbounds [2 x i8*], [2 x i8*]* %4, i64 0, i64 1
  %6 = load i8*, i8** %5, align 8
  ret i8* %6
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
