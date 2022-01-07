; ModuleID = '/home/carl/AnghaBench/goaccess/src/extr_json.c_poverall_start_end_date.c'
source_filename = "/home/carl/AnghaBench/goaccess/src/extr_json.c_poverall_start_end_date.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i64 }

@.str = private unnamed_addr constant [9 x i8] c"%d/%b/%Y\00", align 1
@OVERALL_STARTDATE = common dso_local global i32 0, align 4
@OVERALL_ENDDATE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, %struct.TYPE_4__*, i32)* @poverall_start_end_date to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @poverall_start_end_date(i32* %0, %struct.TYPE_4__* %1, i32 %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca %struct.TYPE_4__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  store i32* %0, i32** %4, align 8
  store %struct.TYPE_4__* %1, %struct.TYPE_4__** %5, align 8
  store i32 %2, i32* %6, align 4
  store i8* null, i8** %7, align 8
  store i8* null, i8** %8, align 8
  %9 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %10 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = icmp eq i64 %11, 0
  br i1 %12, label %17, label %13

13:                                               ; preds = %3
  %14 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %15 = call i64 @get_start_end_parsing_dates(%struct.TYPE_4__* %14, i8** %7, i8** %8, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0))
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %18

17:                                               ; preds = %13, %3
  br label %33

18:                                               ; preds = %13
  %19 = load i32*, i32** %4, align 8
  %20 = load i32, i32* @OVERALL_STARTDATE, align 4
  %21 = load i8*, i8** %7, align 8
  %22 = load i32, i32* %6, align 4
  %23 = call i32 @pskeysval(i32* %19, i32 %20, i8* %21, i32 %22, i32 0)
  %24 = load i32*, i32** %4, align 8
  %25 = load i32, i32* @OVERALL_ENDDATE, align 4
  %26 = load i8*, i8** %8, align 8
  %27 = load i32, i32* %6, align 4
  %28 = call i32 @pskeysval(i32* %24, i32 %25, i8* %26, i32 %27, i32 0)
  %29 = load i8*, i8** %8, align 8
  %30 = call i32 @free(i8* %29)
  %31 = load i8*, i8** %7, align 8
  %32 = call i32 @free(i8* %31)
  br label %33

33:                                               ; preds = %18, %17
  ret void
}

declare dso_local i64 @get_start_end_parsing_dates(%struct.TYPE_4__*, i8**, i8**, i8*) #1

declare dso_local i32 @pskeysval(i32*, i32, i8*, i32, i32) #1

declare dso_local i32 @free(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
