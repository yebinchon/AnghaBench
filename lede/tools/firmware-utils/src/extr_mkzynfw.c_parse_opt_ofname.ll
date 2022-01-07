; ModuleID = '/home/carl/AnghaBench/lede/tools/firmware-utils/src/extr_mkzynfw.c_parse_opt_ofname.c'
source_filename = "/home/carl/AnghaBench/lede/tools/firmware-utils/src/extr_mkzynfw.c_parse_opt_ofname.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@ofname = common dso_local global i8* null, align 8
@.str = private unnamed_addr constant [29 x i8] c"only one output file allowed\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @parse_opt_ofname(i8 signext %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8, align 1
  %5 = alloca i8*, align 8
  store i8 %0, i8* %4, align 1
  store i8* %1, i8** %5, align 8
  %6 = load i8*, i8** @ofname, align 8
  %7 = icmp ne i8* %6, null
  br i1 %7, label %8, label %10

8:                                                ; preds = %2
  %9 = call i32 @ERR(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0))
  store i32 -1, i32* %3, align 4
  br label %18

10:                                               ; preds = %2
  %11 = load i8, i8* %4, align 1
  %12 = load i8*, i8** %5, align 8
  %13 = call i64 @required_arg(i8 signext %11, i8* %12)
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %16

15:                                               ; preds = %10
  store i32 -1, i32* %3, align 4
  br label %18

16:                                               ; preds = %10
  %17 = load i8*, i8** %5, align 8
  store i8* %17, i8** @ofname, align 8
  store i32 0, i32* %3, align 4
  br label %18

18:                                               ; preds = %16, %15, %8
  %19 = load i32, i32* %3, align 4
  ret i32 %19
}

declare dso_local i32 @ERR(i8*) #1

declare dso_local i64 @required_arg(i8 signext, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
