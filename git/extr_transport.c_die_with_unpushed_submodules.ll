; ModuleID = '/home/carl/AnghaBench/git/extr_transport.c_die_with_unpushed_submodules.c'
source_filename = "/home/carl/AnghaBench/git/extr_transport.c_die_with_unpushed_submodules.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.string_list = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i8* }

@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [84 x i8] c"The following submodule paths contain changes that can\0Anot be found on any remote:\0A\00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"  %s\0A\00", align 1
@.str.2 = private unnamed_addr constant [121 x i8] c"\0APlease try\0A\0A\09git push --recurse-submodules=on-demand\0A\0Aor cd to the path and use\0A\0A\09git push\0A\0Ato push them to a remote.\0A\0A\00", align 1
@.str.3 = private unnamed_addr constant [10 x i8] c"Aborting.\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.string_list*)* @die_with_unpushed_submodules to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @die_with_unpushed_submodules(%struct.string_list* %0) #0 {
  %2 = alloca %struct.string_list*, align 8
  %3 = alloca i32, align 4
  store %struct.string_list* %0, %struct.string_list** %2, align 8
  %4 = load i32, i32* @stderr, align 4
  %5 = call i8* @_(i8* getelementptr inbounds ([84 x i8], [84 x i8]* @.str, i64 0, i64 0))
  %6 = call i32 (i32, i8*, ...) @fprintf(i32 %4, i8* %5)
  store i32 0, i32* %3, align 4
  br label %7

7:                                                ; preds = %24, %1
  %8 = load i32, i32* %3, align 4
  %9 = load %struct.string_list*, %struct.string_list** %2, align 8
  %10 = getelementptr inbounds %struct.string_list, %struct.string_list* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 8
  %12 = icmp slt i32 %8, %11
  br i1 %12, label %13, label %27

13:                                               ; preds = %7
  %14 = load i32, i32* @stderr, align 4
  %15 = load %struct.string_list*, %struct.string_list** %2, align 8
  %16 = getelementptr inbounds %struct.string_list, %struct.string_list* %15, i32 0, i32 1
  %17 = load %struct.TYPE_2__*, %struct.TYPE_2__** %16, align 8
  %18 = load i32, i32* %3, align 4
  %19 = sext i32 %18 to i64
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i64 %19
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 0
  %22 = load i8*, i8** %21, align 8
  %23 = call i32 (i32, i8*, ...) @fprintf(i32 %14, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i8* %22)
  br label %24

24:                                               ; preds = %13
  %25 = load i32, i32* %3, align 4
  %26 = add nsw i32 %25, 1
  store i32 %26, i32* %3, align 4
  br label %7

27:                                               ; preds = %7
  %28 = load i32, i32* @stderr, align 4
  %29 = call i8* @_(i8* getelementptr inbounds ([121 x i8], [121 x i8]* @.str.2, i64 0, i64 0))
  %30 = call i32 (i32, i8*, ...) @fprintf(i32 %28, i8* %29)
  %31 = load %struct.string_list*, %struct.string_list** %2, align 8
  %32 = call i32 @string_list_clear(%struct.string_list* %31, i32 0)
  %33 = call i8* @_(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.3, i64 0, i64 0))
  %34 = call i32 @die(i8* %33)
  ret void
}

declare dso_local i32 @fprintf(i32, i8*, ...) #1

declare dso_local i8* @_(i8*) #1

declare dso_local i32 @string_list_clear(%struct.string_list*, i32) #1

declare dso_local i32 @die(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
