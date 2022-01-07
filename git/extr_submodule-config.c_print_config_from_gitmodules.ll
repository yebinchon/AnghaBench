; ModuleID = '/home/carl/AnghaBench/git/extr_submodule-config.c_print_config_from_gitmodules.c'
source_filename = "/home/carl/AnghaBench/git/extr_submodule-config.c_print_config_from_gitmodules.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.repository = type { i32 }

@CONFIG_INVALID_KEY = common dso_local global i32 0, align 4
@config_print_callback = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @print_config_from_gitmodules(%struct.repository* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.repository*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  store %struct.repository* %0, %struct.repository** %4, align 8
  store i8* %1, i8** %5, align 8
  %8 = load i8*, i8** %5, align 8
  %9 = call i32 @git_config_parse_key(i8* %8, i8** %7, i32* null)
  store i32 %9, i32* %6, align 4
  %10 = load i32, i32* %6, align 4
  %11 = icmp slt i32 %10, 0
  br i1 %11, label %12, label %14

12:                                               ; preds = %2
  %13 = load i32, i32* @CONFIG_INVALID_KEY, align 4
  store i32 %13, i32* %3, align 4
  br label %21

14:                                               ; preds = %2
  %15 = load i32, i32* @config_print_callback, align 4
  %16 = load %struct.repository*, %struct.repository** %4, align 8
  %17 = load i8*, i8** %7, align 8
  %18 = call i32 @config_from_gitmodules(i32 %15, %struct.repository* %16, i8* %17)
  %19 = load i8*, i8** %7, align 8
  %20 = call i32 @free(i8* %19)
  store i32 0, i32* %3, align 4
  br label %21

21:                                               ; preds = %14, %12
  %22 = load i32, i32* %3, align 4
  ret i32 %22
}

declare dso_local i32 @git_config_parse_key(i8*, i8**, i32*) #1

declare dso_local i32 @config_from_gitmodules(i32, %struct.repository*, i8*) #1

declare dso_local i32 @free(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
