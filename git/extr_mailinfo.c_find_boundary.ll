; ModuleID = '/home/carl/AnghaBench/git/extr_mailinfo.c_find_boundary.c'
source_filename = "/home/carl/AnghaBench/git/extr_mailinfo.c_find_boundary.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mailinfo = type { i64*, i32 }
%struct.strbuf = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mailinfo*, %struct.strbuf*)* @find_boundary to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @find_boundary(%struct.mailinfo* %0, %struct.strbuf* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.mailinfo*, align 8
  %5 = alloca %struct.strbuf*, align 8
  store %struct.mailinfo* %0, %struct.mailinfo** %4, align 8
  store %struct.strbuf* %1, %struct.strbuf** %5, align 8
  br label %6

6:                                                ; preds = %26, %2
  %7 = load %struct.strbuf*, %struct.strbuf** %5, align 8
  %8 = load %struct.mailinfo*, %struct.mailinfo** %4, align 8
  %9 = getelementptr inbounds %struct.mailinfo, %struct.mailinfo* %8, i32 0, i32 1
  %10 = load i32, i32* %9, align 8
  %11 = call i32 @strbuf_getline_lf(%struct.strbuf* %7, i32 %10)
  %12 = icmp ne i32 %11, 0
  %13 = xor i1 %12, true
  br i1 %13, label %14, label %27

14:                                               ; preds = %6
  %15 = load %struct.mailinfo*, %struct.mailinfo** %4, align 8
  %16 = getelementptr inbounds %struct.mailinfo, %struct.mailinfo* %15, i32 0, i32 0
  %17 = load i64*, i64** %16, align 8
  %18 = load i64, i64* %17, align 8
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %26

20:                                               ; preds = %14
  %21 = load %struct.mailinfo*, %struct.mailinfo** %4, align 8
  %22 = load %struct.strbuf*, %struct.strbuf** %5, align 8
  %23 = call i64 @is_multipart_boundary(%struct.mailinfo* %21, %struct.strbuf* %22)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %26

25:                                               ; preds = %20
  store i32 1, i32* %3, align 4
  br label %28

26:                                               ; preds = %20, %14
  br label %6

27:                                               ; preds = %6
  store i32 0, i32* %3, align 4
  br label %28

28:                                               ; preds = %27, %25
  %29 = load i32, i32* %3, align 4
  ret i32 %29
}

declare dso_local i32 @strbuf_getline_lf(%struct.strbuf*, i32) #1

declare dso_local i64 @is_multipart_boundary(%struct.mailinfo*, %struct.strbuf*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
