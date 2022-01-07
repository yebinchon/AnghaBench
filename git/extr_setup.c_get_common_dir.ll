; ModuleID = '/home/carl/AnghaBench/git/extr_setup.c_get_common_dir.c'
source_filename = "/home/carl/AnghaBench/git/extr_setup.c_get_common_dir.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.strbuf = type { i32 }

@GIT_COMMON_DIR_ENVIRONMENT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @get_common_dir(%struct.strbuf* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.strbuf*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  store %struct.strbuf* %0, %struct.strbuf** %4, align 8
  store i8* %1, i8** %5, align 8
  %7 = load i32, i32* @GIT_COMMON_DIR_ENVIRONMENT, align 4
  %8 = call i8* @getenv(i32 %7)
  store i8* %8, i8** %6, align 8
  %9 = load i8*, i8** %6, align 8
  %10 = icmp ne i8* %9, null
  br i1 %10, label %11, label %15

11:                                               ; preds = %2
  %12 = load %struct.strbuf*, %struct.strbuf** %4, align 8
  %13 = load i8*, i8** %6, align 8
  %14 = call i32 @strbuf_addstr(%struct.strbuf* %12, i8* %13)
  store i32 1, i32* %3, align 4
  br label %19

15:                                               ; preds = %2
  %16 = load %struct.strbuf*, %struct.strbuf** %4, align 8
  %17 = load i8*, i8** %5, align 8
  %18 = call i32 @get_common_dir_noenv(%struct.strbuf* %16, i8* %17)
  store i32 %18, i32* %3, align 4
  br label %19

19:                                               ; preds = %15, %11
  %20 = load i32, i32* %3, align 4
  ret i32 %20
}

declare dso_local i8* @getenv(i32) #1

declare dso_local i32 @strbuf_addstr(%struct.strbuf*, i8*) #1

declare dso_local i32 @get_common_dir_noenv(%struct.strbuf*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
