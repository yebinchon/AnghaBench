; ModuleID = '/home/carl/AnghaBench/goaccess/src/extr_output.c_print_json_data.c'
source_filename = "/home/carl/AnghaBench/goaccess/src/extr_output.c_print_json_data.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [32 x i8] c"<script type='text/javascript'>\00", align 1
@.str.1 = private unnamed_addr constant [17 x i8] c"var json_data=%s\00", align 1
@.str.2 = private unnamed_addr constant [10 x i8] c"</script>\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32*, i32*)* @print_json_data to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @print_json_data(i32* %0, i32* %1, i32* %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i8*, align 8
  store i32* %0, i32** %4, align 8
  store i32* %1, i32** %5, align 8
  store i32* %2, i32** %6, align 8
  store i8* null, i8** %7, align 8
  %8 = load i32*, i32** %5, align 8
  %9 = load i32*, i32** %6, align 8
  %10 = call i8* @get_json(i32* %8, i32* %9, i32 1)
  store i8* %10, i8** %7, align 8
  %11 = icmp eq i8* %10, null
  br i1 %11, label %12, label %13

12:                                               ; preds = %3
  br label %23

13:                                               ; preds = %3
  %14 = load i32*, i32** %4, align 8
  %15 = call i32 (i32*, i8*, ...) @fprintf(i32* %14, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0))
  %16 = load i32*, i32** %4, align 8
  %17 = load i8*, i8** %7, align 8
  %18 = call i32 (i32*, i8*, ...) @fprintf(i32* %16, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i64 0, i64 0), i8* %17)
  %19 = load i32*, i32** %4, align 8
  %20 = call i32 (i32*, i8*, ...) @fprintf(i32* %19, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0))
  %21 = load i8*, i8** %7, align 8
  %22 = call i32 @free(i8* %21)
  br label %23

23:                                               ; preds = %13, %12
  ret void
}

declare dso_local i8* @get_json(i32*, i32*, i32) #1

declare dso_local i32 @fprintf(i32*, i8*, ...) #1

declare dso_local i32 @free(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
