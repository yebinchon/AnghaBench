; ModuleID = '/home/carl/AnghaBench/git/extr_mailinfo.c_flush_inbody_header_accum.c'
source_filename = "/home/carl/AnghaBench/git/extr_mailinfo.c_flush_inbody_header_accum.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mailinfo = type { %struct.TYPE_3__, i32 }
%struct.TYPE_3__ = type { i32 }

@.str = private unnamed_addr constant [78 x i8] c"inbody_header_accum, if not empty, must always contain a valid in-body header\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mailinfo*)* @flush_inbody_header_accum to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @flush_inbody_header_accum(%struct.mailinfo* %0) #0 {
  %2 = alloca %struct.mailinfo*, align 8
  store %struct.mailinfo* %0, %struct.mailinfo** %2, align 8
  %3 = load %struct.mailinfo*, %struct.mailinfo** %2, align 8
  %4 = getelementptr inbounds %struct.mailinfo, %struct.mailinfo* %3, i32 0, i32 0
  %5 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %4, i32 0, i32 0
  %6 = load i32, i32* %5, align 4
  %7 = icmp ne i32 %6, 0
  br i1 %7, label %9, label %8

8:                                                ; preds = %1
  br label %24

9:                                                ; preds = %1
  %10 = load %struct.mailinfo*, %struct.mailinfo** %2, align 8
  %11 = load %struct.mailinfo*, %struct.mailinfo** %2, align 8
  %12 = getelementptr inbounds %struct.mailinfo, %struct.mailinfo* %11, i32 0, i32 0
  %13 = load %struct.mailinfo*, %struct.mailinfo** %2, align 8
  %14 = getelementptr inbounds %struct.mailinfo, %struct.mailinfo* %13, i32 0, i32 1
  %15 = load i32, i32* %14, align 4
  %16 = call i32 @check_header(%struct.mailinfo* %10, %struct.TYPE_3__* %12, i32 %15, i32 0)
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %20, label %18

18:                                               ; preds = %9
  %19 = call i32 @BUG(i8* getelementptr inbounds ([78 x i8], [78 x i8]* @.str, i64 0, i64 0))
  br label %20

20:                                               ; preds = %18, %9
  %21 = load %struct.mailinfo*, %struct.mailinfo** %2, align 8
  %22 = getelementptr inbounds %struct.mailinfo, %struct.mailinfo* %21, i32 0, i32 0
  %23 = call i32 @strbuf_reset(%struct.TYPE_3__* %22)
  br label %24

24:                                               ; preds = %20, %8
  ret void
}

declare dso_local i32 @check_header(%struct.mailinfo*, %struct.TYPE_3__*, i32, i32) #1

declare dso_local i32 @BUG(i8*) #1

declare dso_local i32 @strbuf_reset(%struct.TYPE_3__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
