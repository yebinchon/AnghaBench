; ModuleID = '/home/carl/AnghaBench/lede/tools/firmware-utils/src/extr_mkmylofw.c_parse_opt_rev.c'
source_filename = "/home/carl/AnghaBench/lede/tools/firmware-utils/src/extr_mkmylofw.c_parse_opt_rev.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }

@fw_header = common dso_local global %struct.TYPE_2__ zeroinitializer, align 4
@.str = private unnamed_addr constant [28 x i8] c"invalid revision number: %s\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @parse_opt_rev(i8 signext %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8, align 1
  %5 = alloca i8*, align 8
  store i8 %0, i8* %4, align 1
  store i8* %1, i8** %5, align 8
  %6 = load i8, i8* %4, align 1
  %7 = load i8*, i8** %5, align 8
  %8 = call i64 @required_arg(i8 signext %6, i8* %7)
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %10, label %11

10:                                               ; preds = %2
  store i32 -1, i32* %3, align 4
  br label %19

11:                                               ; preds = %2
  %12 = load i8*, i8** %5, align 8
  %13 = call i64 @str2u32(i8* %12, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @fw_header, i32 0, i32 0))
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %18

15:                                               ; preds = %11
  %16 = load i8*, i8** %5, align 8
  %17 = call i32 @errmsg(i32 0, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0), i8* %16)
  store i32 -1, i32* %3, align 4
  br label %19

18:                                               ; preds = %11
  store i32 0, i32* %3, align 4
  br label %19

19:                                               ; preds = %18, %15, %10
  %20 = load i32, i32* %3, align 4
  ret i32 %20
}

declare dso_local i64 @required_arg(i8 signext, i8*) #1

declare dso_local i64 @str2u32(i8*, i32*) #1

declare dso_local i32 @errmsg(i32, i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
