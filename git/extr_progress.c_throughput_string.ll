; ModuleID = '/home/carl/AnghaBench/git/extr_progress.c_throughput_string.c'
source_filename = "/home/carl/AnghaBench/git/extr_progress.c_throughput_string.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.strbuf = type { i32 }

@.str = private unnamed_addr constant [3 x i8] c", \00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c" | \00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.strbuf*, i32, i32)* @throughput_string to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @throughput_string(%struct.strbuf* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.strbuf*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.strbuf* %0, %struct.strbuf** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %7 = load %struct.strbuf*, %struct.strbuf** %4, align 8
  %8 = call i32 @strbuf_reset(%struct.strbuf* %7)
  %9 = load %struct.strbuf*, %struct.strbuf** %4, align 8
  %10 = call i32 @strbuf_addstr(%struct.strbuf* %9, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0))
  %11 = load %struct.strbuf*, %struct.strbuf** %4, align 8
  %12 = load i32, i32* %5, align 4
  %13 = call i32 @strbuf_humanise_bytes(%struct.strbuf* %11, i32 %12)
  %14 = load %struct.strbuf*, %struct.strbuf** %4, align 8
  %15 = call i32 @strbuf_addstr(%struct.strbuf* %14, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0))
  %16 = load %struct.strbuf*, %struct.strbuf** %4, align 8
  %17 = load i32, i32* %6, align 4
  %18 = mul i32 %17, 1024
  %19 = call i32 @strbuf_humanise_rate(%struct.strbuf* %16, i32 %18)
  ret void
}

declare dso_local i32 @strbuf_reset(%struct.strbuf*) #1

declare dso_local i32 @strbuf_addstr(%struct.strbuf*, i8*) #1

declare dso_local i32 @strbuf_humanise_bytes(%struct.strbuf*, i32) #1

declare dso_local i32 @strbuf_humanise_rate(%struct.strbuf*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
