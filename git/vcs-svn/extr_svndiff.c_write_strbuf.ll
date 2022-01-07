; ModuleID = '/home/carl/AnghaBench/git/vcs-svn/extr_svndiff.c_write_strbuf.c'
source_filename = "/home/carl/AnghaBench/git/vcs-svn/extr_svndiff.c_write_strbuf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.strbuf = type { i64, i32 }

@.str = private unnamed_addr constant [29 x i8] c"cannot write delta postimage\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.strbuf*, i32*)* @write_strbuf to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @write_strbuf(%struct.strbuf* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.strbuf*, align 8
  %5 = alloca i32*, align 8
  store %struct.strbuf* %0, %struct.strbuf** %4, align 8
  store i32* %1, i32** %5, align 8
  %6 = load %struct.strbuf*, %struct.strbuf** %4, align 8
  %7 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %6, i32 0, i32 1
  %8 = load i32, i32* %7, align 8
  %9 = load %struct.strbuf*, %struct.strbuf** %4, align 8
  %10 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = load i32*, i32** %5, align 8
  %13 = call i64 @fwrite(i32 %8, i32 1, i64 %11, i32* %12)
  %14 = load %struct.strbuf*, %struct.strbuf** %4, align 8
  %15 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = icmp eq i64 %13, %16
  br i1 %17, label %18, label %19

18:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %21

19:                                               ; preds = %2
  %20 = call i32 @error_errno(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0))
  store i32 %20, i32* %3, align 4
  br label %21

21:                                               ; preds = %19, %18
  %22 = load i32, i32* %3, align 4
  ret i32 %22
}

declare dso_local i64 @fwrite(i32, i32, i64, i32*) #1

declare dso_local i32 @error_errno(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
