; ModuleID = '/home/carl/AnghaBench/git/extr_mailinfo.c_decode_transfer_encoding.c'
source_filename = "/home/carl/AnghaBench/git/extr_mailinfo.c_decode_transfer_encoding.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mailinfo = type { i32 }
%struct.strbuf = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mailinfo*, %struct.strbuf*)* @decode_transfer_encoding to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @decode_transfer_encoding(%struct.mailinfo* %0, %struct.strbuf* %1) #0 {
  %3 = alloca %struct.mailinfo*, align 8
  %4 = alloca %struct.strbuf*, align 8
  %5 = alloca %struct.strbuf*, align 8
  store %struct.mailinfo* %0, %struct.mailinfo** %3, align 8
  store %struct.strbuf* %1, %struct.strbuf** %4, align 8
  %6 = load %struct.mailinfo*, %struct.mailinfo** %3, align 8
  %7 = getelementptr inbounds %struct.mailinfo, %struct.mailinfo* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 4
  switch i32 %8, label %16 [
    i32 128, label %9
    i32 130, label %12
    i32 129, label %15
  ]

9:                                                ; preds = %2
  %10 = load %struct.strbuf*, %struct.strbuf** %4, align 8
  %11 = call %struct.strbuf* @decode_q_segment(%struct.strbuf* %10, i32 0)
  store %struct.strbuf* %11, %struct.strbuf** %5, align 8
  br label %17

12:                                               ; preds = %2
  %13 = load %struct.strbuf*, %struct.strbuf** %4, align 8
  %14 = call %struct.strbuf* @decode_b_segment(%struct.strbuf* %13)
  store %struct.strbuf* %14, %struct.strbuf** %5, align 8
  br label %17

15:                                               ; preds = %2
  br label %16

16:                                               ; preds = %2, %15
  br label %27

17:                                               ; preds = %12, %9
  %18 = load %struct.strbuf*, %struct.strbuf** %4, align 8
  %19 = call i32 @strbuf_reset(%struct.strbuf* %18)
  %20 = load %struct.strbuf*, %struct.strbuf** %4, align 8
  %21 = load %struct.strbuf*, %struct.strbuf** %5, align 8
  %22 = call i32 @strbuf_addbuf(%struct.strbuf* %20, %struct.strbuf* %21)
  %23 = load %struct.strbuf*, %struct.strbuf** %5, align 8
  %24 = call i32 @strbuf_release(%struct.strbuf* %23)
  %25 = load %struct.strbuf*, %struct.strbuf** %5, align 8
  %26 = call i32 @free(%struct.strbuf* %25)
  br label %27

27:                                               ; preds = %17, %16
  ret void
}

declare dso_local %struct.strbuf* @decode_q_segment(%struct.strbuf*, i32) #1

declare dso_local %struct.strbuf* @decode_b_segment(%struct.strbuf*) #1

declare dso_local i32 @strbuf_reset(%struct.strbuf*) #1

declare dso_local i32 @strbuf_addbuf(%struct.strbuf*, %struct.strbuf*) #1

declare dso_local i32 @strbuf_release(%struct.strbuf*) #1

declare dso_local i32 @free(%struct.strbuf*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
