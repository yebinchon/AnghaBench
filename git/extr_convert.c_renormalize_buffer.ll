; ModuleID = '/home/carl/AnghaBench/git/extr_convert.c_renormalize_buffer.c'
source_filename = "/home/carl/AnghaBench/git/extr_convert.c_renormalize_buffer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.index_state = type { i32 }
%struct.strbuf = type { i8*, i64 }

@CONV_EOL_RENORMALIZE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @renormalize_buffer(%struct.index_state* %0, i8* %1, i8* %2, i64 %3, %struct.strbuf* %4) #0 {
  %6 = alloca %struct.index_state*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.strbuf*, align 8
  %11 = alloca i32, align 4
  store %struct.index_state* %0, %struct.index_state** %6, align 8
  store i8* %1, i8** %7, align 8
  store i8* %2, i8** %8, align 8
  store i64 %3, i64* %9, align 8
  store %struct.strbuf* %4, %struct.strbuf** %10, align 8
  %12 = load %struct.index_state*, %struct.index_state** %6, align 8
  %13 = load i8*, i8** %7, align 8
  %14 = load i8*, i8** %8, align 8
  %15 = load i64, i64* %9, align 8
  %16 = load %struct.strbuf*, %struct.strbuf** %10, align 8
  %17 = call i32 @convert_to_working_tree_internal(%struct.index_state* %12, i8* %13, i8* %14, i64 %15, %struct.strbuf* %16, i32 1, i32* null)
  store i32 %17, i32* %11, align 4
  %18 = load i32, i32* %11, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %27

20:                                               ; preds = %5
  %21 = load %struct.strbuf*, %struct.strbuf** %10, align 8
  %22 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %21, i32 0, i32 0
  %23 = load i8*, i8** %22, align 8
  store i8* %23, i8** %8, align 8
  %24 = load %struct.strbuf*, %struct.strbuf** %10, align 8
  %25 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %24, i32 0, i32 1
  %26 = load i64, i64* %25, align 8
  store i64 %26, i64* %9, align 8
  br label %27

27:                                               ; preds = %20, %5
  %28 = load i32, i32* %11, align 4
  %29 = load %struct.index_state*, %struct.index_state** %6, align 8
  %30 = load i8*, i8** %7, align 8
  %31 = load i8*, i8** %8, align 8
  %32 = load i64, i64* %9, align 8
  %33 = load %struct.strbuf*, %struct.strbuf** %10, align 8
  %34 = load i32, i32* @CONV_EOL_RENORMALIZE, align 4
  %35 = call i32 @convert_to_git(%struct.index_state* %29, i8* %30, i8* %31, i64 %32, %struct.strbuf* %33, i32 %34)
  %36 = or i32 %28, %35
  ret i32 %36
}

declare dso_local i32 @convert_to_working_tree_internal(%struct.index_state*, i8*, i8*, i64, %struct.strbuf*, i32, i32*) #1

declare dso_local i32 @convert_to_git(%struct.index_state*, i8*, i8*, i64, %struct.strbuf*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
