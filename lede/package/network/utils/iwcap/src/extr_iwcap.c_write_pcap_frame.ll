; ModuleID = '/home/carl/AnghaBench/lede/package/network/utils/iwcap/src/extr_iwcap.c_write_pcap_frame.c'
source_filename = "/home/carl/AnghaBench/lede/package/network/utils/iwcap/src/extr_iwcap.c_write_pcap_frame.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.timeval = type { i8*, i8* }
%struct.TYPE_3__ = type { i8*, i8*, i8*, i8* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @write_pcap_frame(i32* %0, i8** %1, i8** %2, i8* %3, i8* %4) #0 {
  %6 = alloca i32*, align 8
  %7 = alloca i8**, align 8
  %8 = alloca i8**, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca %struct.timeval, align 8
  %12 = alloca %struct.TYPE_3__, align 8
  store i32* %0, i32** %6, align 8
  store i8** %1, i8*** %7, align 8
  store i8** %2, i8*** %8, align 8
  store i8* %3, i8** %9, align 8
  store i8* %4, i8** %10, align 8
  %13 = load i8**, i8*** %7, align 8
  %14 = icmp ne i8** %13, null
  br i1 %14, label %15, label %18

15:                                               ; preds = %5
  %16 = load i8**, i8*** %8, align 8
  %17 = icmp ne i8** %16, null
  br i1 %17, label %20, label %18

18:                                               ; preds = %15, %5
  %19 = call i32 @gettimeofday(%struct.timeval* %11, i32* null)
  br label %27

20:                                               ; preds = %15
  %21 = load i8**, i8*** %7, align 8
  %22 = load i8*, i8** %21, align 8
  %23 = getelementptr inbounds %struct.timeval, %struct.timeval* %11, i32 0, i32 1
  store i8* %22, i8** %23, align 8
  %24 = load i8**, i8*** %8, align 8
  %25 = load i8*, i8** %24, align 8
  %26 = getelementptr inbounds %struct.timeval, %struct.timeval* %11, i32 0, i32 0
  store i8* %25, i8** %26, align 8
  br label %27

27:                                               ; preds = %20, %18
  %28 = getelementptr inbounds %struct.timeval, %struct.timeval* %11, i32 0, i32 1
  %29 = load i8*, i8** %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %12, i32 0, i32 3
  store i8* %29, i8** %30, align 8
  %31 = getelementptr inbounds %struct.timeval, %struct.timeval* %11, i32 0, i32 0
  %32 = load i8*, i8** %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %12, i32 0, i32 2
  store i8* %32, i8** %33, align 8
  %34 = load i8*, i8** %9, align 8
  %35 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %12, i32 0, i32 1
  store i8* %34, i8** %35, align 8
  %36 = load i8*, i8** %10, align 8
  %37 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %12, i32 0, i32 0
  store i8* %36, i8** %37, align 8
  %38 = load i32*, i32** %6, align 8
  %39 = call i32 @fwrite(%struct.TYPE_3__* %12, i32 1, i32 32, i32* %38)
  ret void
}

declare dso_local i32 @gettimeofday(%struct.timeval*, i32*) #1

declare dso_local i32 @fwrite(%struct.TYPE_3__*, i32, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
