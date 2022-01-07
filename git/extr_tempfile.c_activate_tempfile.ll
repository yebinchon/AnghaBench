; ModuleID = '/home/carl/AnghaBench/git/extr_tempfile.c_activate_tempfile.c'
source_filename = "/home/carl/AnghaBench/git/extr_tempfile.c_activate_tempfile.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tempfile = type { i32, i32, i32 }

@activate_tempfile.initialized = internal global i32 0, align 4
@.str = private unnamed_addr constant [43 x i8] c"activate_tempfile called for active object\00", align 1
@remove_tempfiles_on_signal = common dso_local global i32 0, align 4
@remove_tempfiles_on_exit = common dso_local global i32 0, align 4
@tempfile_list = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.tempfile*)* @activate_tempfile to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @activate_tempfile(%struct.tempfile* %0) #0 {
  %2 = alloca %struct.tempfile*, align 8
  store %struct.tempfile* %0, %struct.tempfile** %2, align 8
  %3 = load %struct.tempfile*, %struct.tempfile** %2, align 8
  %4 = call i64 @is_tempfile_active(%struct.tempfile* %3)
  %5 = icmp ne i64 %4, 0
  br i1 %5, label %6, label %8

6:                                                ; preds = %1
  %7 = call i32 @BUG(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str, i64 0, i64 0))
  br label %8

8:                                                ; preds = %6, %1
  %9 = load i32, i32* @activate_tempfile.initialized, align 4
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %16, label %11

11:                                               ; preds = %8
  %12 = load i32, i32* @remove_tempfiles_on_signal, align 4
  %13 = call i32 @sigchain_push_common(i32 %12)
  %14 = load i32, i32* @remove_tempfiles_on_exit, align 4
  %15 = call i32 @atexit(i32 %14)
  store i32 1, i32* @activate_tempfile.initialized, align 4
  br label %16

16:                                               ; preds = %11, %8
  %17 = load %struct.tempfile*, %struct.tempfile** %2, align 8
  %18 = getelementptr inbounds %struct.tempfile, %struct.tempfile* %17, i32 0, i32 2
  %19 = call i32 @volatile_list_add(i32* %18, i32* @tempfile_list)
  %20 = call i32 (...) @getpid()
  %21 = load %struct.tempfile*, %struct.tempfile** %2, align 8
  %22 = getelementptr inbounds %struct.tempfile, %struct.tempfile* %21, i32 0, i32 1
  store i32 %20, i32* %22, align 4
  %23 = load %struct.tempfile*, %struct.tempfile** %2, align 8
  %24 = getelementptr inbounds %struct.tempfile, %struct.tempfile* %23, i32 0, i32 0
  store i32 1, i32* %24, align 4
  ret void
}

declare dso_local i64 @is_tempfile_active(%struct.tempfile*) #1

declare dso_local i32 @BUG(i8*) #1

declare dso_local i32 @sigchain_push_common(i32) #1

declare dso_local i32 @atexit(i32) #1

declare dso_local i32 @volatile_list_add(i32*, i32*) #1

declare dso_local i32 @getpid(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
