; ModuleID = '/home/carl/AnghaBench/git/t/t4256/1/extr_mailinfo.c_is_multipart_boundary.c'
source_filename = "/home/carl/AnghaBench/git/t/t4256/1/extr_mailinfo.c_is_multipart_boundary.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mailinfo = type { %struct.strbuf** }
%struct.strbuf = type { i64, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mailinfo*, %struct.strbuf*)* @is_multipart_boundary to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @is_multipart_boundary(%struct.mailinfo* %0, %struct.strbuf* %1) #0 {
  %3 = alloca %struct.mailinfo*, align 8
  %4 = alloca %struct.strbuf*, align 8
  %5 = alloca %struct.strbuf*, align 8
  store %struct.mailinfo* %0, %struct.mailinfo** %3, align 8
  store %struct.strbuf* %1, %struct.strbuf** %4, align 8
  %6 = load %struct.mailinfo*, %struct.mailinfo** %3, align 8
  %7 = getelementptr inbounds %struct.mailinfo, %struct.mailinfo* %6, i32 0, i32 0
  %8 = load %struct.strbuf**, %struct.strbuf*** %7, align 8
  %9 = load %struct.strbuf*, %struct.strbuf** %8, align 8
  store %struct.strbuf* %9, %struct.strbuf** %5, align 8
  %10 = load %struct.strbuf*, %struct.strbuf** %5, align 8
  %11 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = load %struct.strbuf*, %struct.strbuf** %4, align 8
  %14 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = icmp sle i64 %12, %15
  br i1 %16, label %17, label %30

17:                                               ; preds = %2
  %18 = load %struct.strbuf*, %struct.strbuf** %4, align 8
  %19 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 8
  %21 = load %struct.strbuf*, %struct.strbuf** %5, align 8
  %22 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 8
  %24 = load %struct.strbuf*, %struct.strbuf** %5, align 8
  %25 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = call i32 @memcmp(i32 %20, i32 %23, i64 %26)
  %28 = icmp ne i32 %27, 0
  %29 = xor i1 %28, true
  br label %30

30:                                               ; preds = %17, %2
  %31 = phi i1 [ false, %2 ], [ %29, %17 ]
  %32 = zext i1 %31 to i32
  ret i32 %32
}

declare dso_local i32 @memcmp(i32, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
