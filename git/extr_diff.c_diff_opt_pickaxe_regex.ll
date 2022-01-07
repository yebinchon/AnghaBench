; ModuleID = '/home/carl/AnghaBench/git/extr_diff.c_diff_opt_pickaxe_regex.c'
source_filename = "/home/carl/AnghaBench/git/extr_diff.c_diff_opt_pickaxe_regex.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.option = type { %struct.diff_options* }
%struct.diff_options = type { i8*, i32 }

@DIFF_PICKAXE_KIND_G = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.option*, i8*, i32)* @diff_opt_pickaxe_regex to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @diff_opt_pickaxe_regex(%struct.option* %0, i8* %1, i32 %2) #0 {
  %4 = alloca %struct.option*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.diff_options*, align 8
  store %struct.option* %0, %struct.option** %4, align 8
  store i8* %1, i8** %5, align 8
  store i32 %2, i32* %6, align 4
  %8 = load %struct.option*, %struct.option** %4, align 8
  %9 = getelementptr inbounds %struct.option, %struct.option* %8, i32 0, i32 0
  %10 = load %struct.diff_options*, %struct.diff_options** %9, align 8
  store %struct.diff_options* %10, %struct.diff_options** %7, align 8
  %11 = load i32, i32* %6, align 4
  %12 = call i32 @BUG_ON_OPT_NEG(i32 %11)
  %13 = load i8*, i8** %5, align 8
  %14 = load %struct.diff_options*, %struct.diff_options** %7, align 8
  %15 = getelementptr inbounds %struct.diff_options, %struct.diff_options* %14, i32 0, i32 0
  store i8* %13, i8** %15, align 8
  %16 = load i32, i32* @DIFF_PICKAXE_KIND_G, align 4
  %17 = load %struct.diff_options*, %struct.diff_options** %7, align 8
  %18 = getelementptr inbounds %struct.diff_options, %struct.diff_options* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 8
  %20 = or i32 %19, %16
  store i32 %20, i32* %18, align 8
  ret i32 0
}

declare dso_local i32 @BUG_ON_OPT_NEG(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
