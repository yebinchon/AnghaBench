; ModuleID = '/home/carl/AnghaBench/libui/examples/datetime/extr_main.c_onClicked.c'
source_filename = "/home/carl/AnghaBench/libui/examples/datetime/extr_main.c_onClicked.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tm = type { i32 }

@dtdate = common dso_local global i32 0, align 4
@dttime = common dso_local global i32 0, align 4
@dtboth = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @onClicked(i32* %0, i8* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.tm, align 4
  store i32* %0, i32** %3, align 8
  store i8* %1, i8** %4, align 8
  %8 = load i8*, i8** %4, align 8
  %9 = ptrtoint i8* %8 to i64
  store i64 %9, i64* %5, align 8
  store i64 0, i64* %6, align 8
  %10 = load i64, i64* %5, align 8
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %14

12:                                               ; preds = %2
  %13 = call i64 @time(i32* null)
  store i64 %13, i64* %6, align 8
  br label %14

14:                                               ; preds = %12, %2
  %15 = call %struct.tm* @localtime(i64* %6)
  %16 = bitcast %struct.tm* %7 to i8*
  %17 = bitcast %struct.tm* %15 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %16, i8* align 4 %17, i64 4, i1 false)
  %18 = load i64, i64* %5, align 8
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %25

20:                                               ; preds = %14
  %21 = load i32, i32* @dtdate, align 4
  %22 = call i32 @uiDateTimePickerSetTime(i32 %21, %struct.tm* %7)
  %23 = load i32, i32* @dttime, align 4
  %24 = call i32 @uiDateTimePickerSetTime(i32 %23, %struct.tm* %7)
  br label %28

25:                                               ; preds = %14
  %26 = load i32, i32* @dtboth, align 4
  %27 = call i32 @uiDateTimePickerSetTime(i32 %26, %struct.tm* %7)
  br label %28

28:                                               ; preds = %25, %20
  ret void
}

declare dso_local i64 @time(i32*) #1

declare dso_local %struct.tm* @localtime(i64*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @uiDateTimePickerSetTime(i32, %struct.tm*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
