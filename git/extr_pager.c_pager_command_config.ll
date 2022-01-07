; ModuleID = '/home/carl/AnghaBench/git/extr_pager.c_pager_command_config.c'
source_filename = "/home/carl/AnghaBench/git/extr_pager.c_pager_command_config.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pager_command_config_data = type { i32, i32, i32 }

@.str = private unnamed_addr constant [7 x i8] c"pager.\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i8*, i8*)* @pager_command_config to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pager_command_config(i8* %0, i8* %1, i8* %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.pager_command_config_data*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store i8* %1, i8** %5, align 8
  store i8* %2, i8** %6, align 8
  %10 = load i8*, i8** %6, align 8
  %11 = bitcast i8* %10 to %struct.pager_command_config_data*
  store %struct.pager_command_config_data* %11, %struct.pager_command_config_data** %7, align 8
  %12 = load i8*, i8** %4, align 8
  %13 = call i64 @skip_prefix(i8* %12, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i8** %8)
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %39

15:                                               ; preds = %3
  %16 = load i8*, i8** %8, align 8
  %17 = load %struct.pager_command_config_data*, %struct.pager_command_config_data** %7, align 8
  %18 = getelementptr inbounds %struct.pager_command_config_data, %struct.pager_command_config_data* %17, i32 0, i32 2
  %19 = load i32, i32* %18, align 4
  %20 = call i32 @strcmp(i8* %16, i32 %19)
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %39, label %22

22:                                               ; preds = %15
  %23 = load i8*, i8** %5, align 8
  %24 = call i32 @git_parse_maybe_bool(i8* %23)
  store i32 %24, i32* %9, align 4
  %25 = load i32, i32* %9, align 4
  %26 = icmp sge i32 %25, 0
  br i1 %26, label %27, label %31

27:                                               ; preds = %22
  %28 = load i32, i32* %9, align 4
  %29 = load %struct.pager_command_config_data*, %struct.pager_command_config_data** %7, align 8
  %30 = getelementptr inbounds %struct.pager_command_config_data, %struct.pager_command_config_data* %29, i32 0, i32 0
  store i32 %28, i32* %30, align 4
  br label %38

31:                                               ; preds = %22
  %32 = load %struct.pager_command_config_data*, %struct.pager_command_config_data** %7, align 8
  %33 = getelementptr inbounds %struct.pager_command_config_data, %struct.pager_command_config_data* %32, i32 0, i32 0
  store i32 1, i32* %33, align 4
  %34 = load i8*, i8** %5, align 8
  %35 = call i32 @xstrdup(i8* %34)
  %36 = load %struct.pager_command_config_data*, %struct.pager_command_config_data** %7, align 8
  %37 = getelementptr inbounds %struct.pager_command_config_data, %struct.pager_command_config_data* %36, i32 0, i32 1
  store i32 %35, i32* %37, align 4
  br label %38

38:                                               ; preds = %31, %27
  br label %39

39:                                               ; preds = %38, %15, %3
  ret i32 0
}

declare dso_local i64 @skip_prefix(i8*, i8*, i8**) #1

declare dso_local i32 @strcmp(i8*, i32) #1

declare dso_local i32 @git_parse_maybe_bool(i8*) #1

declare dso_local i32 @xstrdup(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
