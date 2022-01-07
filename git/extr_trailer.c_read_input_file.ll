; ModuleID = '/home/carl/AnghaBench/git/extr_trailer.c_read_input_file.c'
source_filename = "/home/carl/AnghaBench/git/extr_trailer.c_read_input_file.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.strbuf = type { i32 }

@.str = private unnamed_addr constant [31 x i8] c"could not read input file '%s'\00", align 1
@stdin = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [26 x i8] c"could not read from stdin\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.strbuf*, i8*)* @read_input_file to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @read_input_file(%struct.strbuf* %0, i8* %1) #0 {
  %3 = alloca %struct.strbuf*, align 8
  %4 = alloca i8*, align 8
  store %struct.strbuf* %0, %struct.strbuf** %3, align 8
  store i8* %1, i8** %4, align 8
  %5 = load i8*, i8** %4, align 8
  %6 = icmp ne i8* %5, null
  br i1 %6, label %7, label %17

7:                                                ; preds = %2
  %8 = load %struct.strbuf*, %struct.strbuf** %3, align 8
  %9 = load i8*, i8** %4, align 8
  %10 = call i64 @strbuf_read_file(%struct.strbuf* %8, i8* %9, i32 0)
  %11 = icmp slt i64 %10, 0
  br i1 %11, label %12, label %16

12:                                               ; preds = %7
  %13 = call i32 @_(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0))
  %14 = load i8*, i8** %4, align 8
  %15 = call i32 (i32, ...) @die_errno(i32 %13, i8* %14)
  br label %16

16:                                               ; preds = %12, %7
  br label %27

17:                                               ; preds = %2
  %18 = load %struct.strbuf*, %struct.strbuf** %3, align 8
  %19 = load i32, i32* @stdin, align 4
  %20 = call i32 @fileno(i32 %19)
  %21 = call i64 @strbuf_read(%struct.strbuf* %18, i32 %20, i32 0)
  %22 = icmp slt i64 %21, 0
  br i1 %22, label %23, label %26

23:                                               ; preds = %17
  %24 = call i32 @_(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0))
  %25 = call i32 (i32, ...) @die_errno(i32 %24)
  br label %26

26:                                               ; preds = %23, %17
  br label %27

27:                                               ; preds = %26, %16
  ret void
}

declare dso_local i64 @strbuf_read_file(%struct.strbuf*, i8*, i32) #1

declare dso_local i32 @die_errno(i32, ...) #1

declare dso_local i32 @_(i8*) #1

declare dso_local i64 @strbuf_read(%struct.strbuf*, i32, i32) #1

declare dso_local i32 @fileno(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
