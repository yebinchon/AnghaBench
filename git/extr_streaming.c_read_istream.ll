; ModuleID = '/home/carl/AnghaBench/git/extr_streaming.c_read_istream.c'
source_filename = "/home/carl/AnghaBench/git/extr_streaming.c_read_istream.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.git_istream = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { {}* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @read_istream(%struct.git_istream* %0, i8* %1, i64 %2) #0 {
  %4 = alloca %struct.git_istream*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  store %struct.git_istream* %0, %struct.git_istream** %4, align 8
  store i8* %1, i8** %5, align 8
  store i64 %2, i64* %6, align 8
  %7 = load %struct.git_istream*, %struct.git_istream** %4, align 8
  %8 = getelementptr inbounds %struct.git_istream, %struct.git_istream* %7, i32 0, i32 0
  %9 = load %struct.TYPE_2__*, %struct.TYPE_2__** %8, align 8
  %10 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i32 0, i32 0
  %11 = bitcast {}** %10 to i32 (%struct.git_istream*, i8*, i64)**
  %12 = load i32 (%struct.git_istream*, i8*, i64)*, i32 (%struct.git_istream*, i8*, i64)** %11, align 8
  %13 = load %struct.git_istream*, %struct.git_istream** %4, align 8
  %14 = load i8*, i8** %5, align 8
  %15 = load i64, i64* %6, align 8
  %16 = call i32 %12(%struct.git_istream* %13, i8* %14, i64 %15)
  ret i32 %16
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
