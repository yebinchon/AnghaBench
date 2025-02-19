; ModuleID = '/home/carl/AnghaBench/libgit2/src/extr_parse.c_git_parse_advance_oid.c'
source_filename = "/home/carl/AnghaBench/libgit2/src/extr_parse.c_git_parse_advance_oid.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i64, i32 }

@GIT_OID_HEXSZ = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @git_parse_advance_oid(i32* %0, %struct.TYPE_4__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca %struct.TYPE_4__*, align 8
  store i32* %0, i32** %4, align 8
  store %struct.TYPE_4__* %1, %struct.TYPE_4__** %5, align 8
  %6 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %7 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %6, i32 0, i32 0
  %8 = load i64, i64* %7, align 8
  %9 = load i64, i64* @GIT_OID_HEXSZ, align 8
  %10 = icmp slt i64 %8, %9
  br i1 %10, label %11, label %12

11:                                               ; preds = %2
  store i32 -1, i32* %3, align 4
  br label %25

12:                                               ; preds = %2
  %13 = load i32*, i32** %4, align 8
  %14 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %15 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %14, i32 0, i32 1
  %16 = load i32, i32* %15, align 8
  %17 = load i64, i64* @GIT_OID_HEXSZ, align 8
  %18 = call i64 @git_oid_fromstrn(i32* %13, i32 %16, i64 %17)
  %19 = icmp slt i64 %18, 0
  br i1 %19, label %20, label %21

20:                                               ; preds = %12
  store i32 -1, i32* %3, align 4
  br label %25

21:                                               ; preds = %12
  %22 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %23 = load i64, i64* @GIT_OID_HEXSZ, align 8
  %24 = call i32 @git_parse_advance_chars(%struct.TYPE_4__* %22, i64 %23)
  store i32 0, i32* %3, align 4
  br label %25

25:                                               ; preds = %21, %20, %11
  %26 = load i32, i32* %3, align 4
  ret i32 %26
}

declare dso_local i64 @git_oid_fromstrn(i32*, i32, i64) #1

declare dso_local i32 @git_parse_advance_chars(%struct.TYPE_4__*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
