; ModuleID = '/home/carl/AnghaBench/libgit2/tests/transports/smart/extr_packet.c_assert_sideband_progress_parses.c'
source_filename = "/home/carl/AnghaBench/libgit2/tests/transports/smart/extr_packet.c_assert_sideband_progress_parses.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i32, i32 }

@GIT_PKT_PROGRESS = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i8*, i64)* @assert_sideband_progress_parses to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @assert_sideband_progress_parses(i8* %0, i8* %1, i64 %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i8*, align 8
  %9 = alloca %struct.TYPE_2__*, align 8
  store i8* %0, i8** %4, align 8
  store i8* %1, i8** %5, align 8
  store i64 %2, i64* %6, align 8
  %10 = load i8*, i8** %4, align 8
  %11 = call i32 @strlen(i8* %10)
  %12 = add nsw i32 %11, 1
  %13 = sext i32 %12 to i64
  store i64 %13, i64* %7, align 8
  %14 = bitcast %struct.TYPE_2__** %9 to i32**
  %15 = load i8*, i8** %4, align 8
  %16 = load i64, i64* %7, align 8
  %17 = call i32 @git_pkt_parse_line(i32** %14, i8** %8, i8* %15, i64 %16)
  %18 = call i32 @cl_git_pass(i32 %17)
  %19 = load %struct.TYPE_2__*, %struct.TYPE_2__** %9, align 8
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 2
  %21 = load i32, i32* %20, align 4
  %22 = load i64, i64* @GIT_PKT_PROGRESS, align 8
  %23 = call i32 @cl_assert_equal_i(i32 %21, i64 %22)
  %24 = load %struct.TYPE_2__*, %struct.TYPE_2__** %9, align 8
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 4
  %27 = load i64, i64* %6, align 8
  %28 = call i32 @cl_assert_equal_i(i32 %26, i64 %27)
  %29 = load %struct.TYPE_2__*, %struct.TYPE_2__** %9, align 8
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = load i8*, i8** %5, align 8
  %33 = load i64, i64* %6, align 8
  %34 = call i32 @cl_assert_equal_strn(i32 %31, i8* %32, i64 %33)
  %35 = load %struct.TYPE_2__*, %struct.TYPE_2__** %9, align 8
  %36 = bitcast %struct.TYPE_2__* %35 to i32*
  %37 = call i32 @git_pkt_free(i32* %36)
  ret void
}

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @cl_git_pass(i32) #1

declare dso_local i32 @git_pkt_parse_line(i32**, i8**, i8*, i64) #1

declare dso_local i32 @cl_assert_equal_i(i32, i64) #1

declare dso_local i32 @cl_assert_equal_strn(i32, i8*, i64) #1

declare dso_local i32 @git_pkt_free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
