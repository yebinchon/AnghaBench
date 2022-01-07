; ModuleID = '/home/carl/AnghaBench/git/extr_lockfile.c_unable_to_lock_message.c'
source_filename = "/home/carl/AnghaBench/git/extr_lockfile.c_unable_to_lock_message.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.strbuf = type { i32 }

@EEXIST = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [310 x i8] c"Unable to create '%s.lock': %s.\0A\0AAnother git process seems to be running in this repository, e.g.\0Aan editor opened by 'git commit'. Please make sure all processes\0Aare terminated then try again. If it still fails, a git process\0Amay have crashed in this repository earlier:\0Aremove the file manually to continue.\00", align 1
@.str.1 = private unnamed_addr constant [31 x i8] c"Unable to create '%s.lock': %s\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @unable_to_lock_message(i8* %0, i32 %1, %struct.strbuf* %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.strbuf*, align 8
  store i8* %0, i8** %4, align 8
  store i32 %1, i32* %5, align 4
  store %struct.strbuf* %2, %struct.strbuf** %6, align 8
  %7 = load i32, i32* %5, align 4
  %8 = load i32, i32* @EEXIST, align 4
  %9 = icmp eq i32 %7, %8
  br i1 %9, label %10, label %18

10:                                               ; preds = %3
  %11 = load %struct.strbuf*, %struct.strbuf** %6, align 8
  %12 = call i32 @_(i8* getelementptr inbounds ([310 x i8], [310 x i8]* @.str, i64 0, i64 0))
  %13 = load i8*, i8** %4, align 8
  %14 = call i32 @absolute_path(i8* %13)
  %15 = load i32, i32* %5, align 4
  %16 = call i32 @strerror(i32 %15)
  %17 = call i32 @strbuf_addf(%struct.strbuf* %11, i32 %12, i32 %14, i32 %16)
  br label %26

18:                                               ; preds = %3
  %19 = load %struct.strbuf*, %struct.strbuf** %6, align 8
  %20 = call i32 @_(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0))
  %21 = load i8*, i8** %4, align 8
  %22 = call i32 @absolute_path(i8* %21)
  %23 = load i32, i32* %5, align 4
  %24 = call i32 @strerror(i32 %23)
  %25 = call i32 @strbuf_addf(%struct.strbuf* %19, i32 %20, i32 %22, i32 %24)
  br label %26

26:                                               ; preds = %18, %10
  ret void
}

declare dso_local i32 @strbuf_addf(%struct.strbuf*, i32, i32, i32) #1

declare dso_local i32 @_(i8*) #1

declare dso_local i32 @absolute_path(i8*) #1

declare dso_local i32 @strerror(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
