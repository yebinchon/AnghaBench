; ModuleID = '/home/carl/AnghaBench/libgit2/tests/transports/smart/extr_packet.c_assert_nak_parses.c'
source_filename = "/home/carl/AnghaBench/libgit2/tests/transports/smart/extr_packet.c_assert_nak_parses.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32 }

@GIT_PKT_NAK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*)* @assert_nak_parses to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @assert_nak_parses(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.TYPE_4__*, align 8
  store i8* %0, i8** %2, align 8
  %6 = load i8*, i8** %2, align 8
  %7 = call i32 @strlen(i8* %6)
  %8 = add nsw i32 %7, 1
  %9 = sext i32 %8 to i64
  store i64 %9, i64* %3, align 8
  %10 = load i8*, i8** %2, align 8
  %11 = load i64, i64* %3, align 8
  %12 = call i32 @git_pkt_parse_line(%struct.TYPE_4__** %5, i8** %4, i8* %10, i64 %11)
  %13 = call i32 @cl_git_pass(i32 %12)
  %14 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %15 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = load i32, i32* @GIT_PKT_NAK, align 4
  %18 = call i32 @cl_assert_equal_i(i32 %16, i32 %17)
  %19 = load i8*, i8** %4, align 8
  %20 = load i8*, i8** %2, align 8
  %21 = getelementptr inbounds i8, i8* %20, i64 7
  %22 = load i64, i64* %3, align 8
  %23 = sub i64 %22, 7
  %24 = call i32 @cl_assert_equal_strn(i8* %19, i8* %21, i64 %23)
  %25 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %26 = call i32 @git_pkt_free(%struct.TYPE_4__* %25)
  ret void
}

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @cl_git_pass(i32) #1

declare dso_local i32 @git_pkt_parse_line(%struct.TYPE_4__**, i8**, i8*, i64) #1

declare dso_local i32 @cl_assert_equal_i(i32, i32) #1

declare dso_local i32 @cl_assert_equal_strn(i8*, i8*, i64) #1

declare dso_local i32 @git_pkt_free(%struct.TYPE_4__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
