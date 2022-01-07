; ModuleID = '/home/carl/AnghaBench/git/extr_refs.c_ref_transaction_prepare.c'
source_filename = "/home/carl/AnghaBench/git/extr_refs.c_ref_transaction_prepare.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ref_transaction = type { i32, %struct.ref_store* }
%struct.ref_store = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 (%struct.ref_store*, %struct.ref_transaction*, %struct.strbuf*)* }
%struct.strbuf = type { i32 }

@.str = private unnamed_addr constant [46 x i8] c"prepare called twice on reference transaction\00", align 1
@.str.1 = private unnamed_addr constant [49 x i8] c"prepare called on a closed reference transaction\00", align 1
@.str.2 = private unnamed_addr constant [39 x i8] c"unexpected reference transaction state\00", align 1
@GIT_QUARANTINE_ENVIRONMENT = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [52 x i8] c"ref updates forbidden inside quarantine environment\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ref_transaction_prepare(%struct.ref_transaction* %0, %struct.strbuf* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ref_transaction*, align 8
  %5 = alloca %struct.strbuf*, align 8
  %6 = alloca %struct.ref_store*, align 8
  store %struct.ref_transaction* %0, %struct.ref_transaction** %4, align 8
  store %struct.strbuf* %1, %struct.strbuf** %5, align 8
  %7 = load %struct.ref_transaction*, %struct.ref_transaction** %4, align 8
  %8 = getelementptr inbounds %struct.ref_transaction, %struct.ref_transaction* %7, i32 0, i32 1
  %9 = load %struct.ref_store*, %struct.ref_store** %8, align 8
  store %struct.ref_store* %9, %struct.ref_store** %6, align 8
  %10 = load %struct.ref_transaction*, %struct.ref_transaction** %4, align 8
  %11 = getelementptr inbounds %struct.ref_transaction, %struct.ref_transaction* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  switch i32 %12, label %18 [
    i32 129, label %13
    i32 128, label %14
    i32 130, label %16
  ]

13:                                               ; preds = %2
  br label %20

14:                                               ; preds = %2
  %15 = call i32 @BUG(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str, i64 0, i64 0))
  br label %20

16:                                               ; preds = %2
  %17 = call i32 @BUG(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.1, i64 0, i64 0))
  br label %20

18:                                               ; preds = %2
  %19 = call i32 @BUG(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.2, i64 0, i64 0))
  br label %20

20:                                               ; preds = %18, %16, %14, %13
  %21 = load i32, i32* @GIT_QUARANTINE_ENVIRONMENT, align 4
  %22 = call i64 @getenv(i32 %21)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %28

24:                                               ; preds = %20
  %25 = load %struct.strbuf*, %struct.strbuf** %5, align 8
  %26 = call i32 @_(i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.3, i64 0, i64 0))
  %27 = call i32 @strbuf_addstr(%struct.strbuf* %25, i32 %26)
  store i32 -1, i32* %3, align 4
  br label %38

28:                                               ; preds = %20
  %29 = load %struct.ref_store*, %struct.ref_store** %6, align 8
  %30 = getelementptr inbounds %struct.ref_store, %struct.ref_store* %29, i32 0, i32 0
  %31 = load %struct.TYPE_2__*, %struct.TYPE_2__** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i32 0, i32 0
  %33 = load i32 (%struct.ref_store*, %struct.ref_transaction*, %struct.strbuf*)*, i32 (%struct.ref_store*, %struct.ref_transaction*, %struct.strbuf*)** %32, align 8
  %34 = load %struct.ref_store*, %struct.ref_store** %6, align 8
  %35 = load %struct.ref_transaction*, %struct.ref_transaction** %4, align 8
  %36 = load %struct.strbuf*, %struct.strbuf** %5, align 8
  %37 = call i32 %33(%struct.ref_store* %34, %struct.ref_transaction* %35, %struct.strbuf* %36)
  store i32 %37, i32* %3, align 4
  br label %38

38:                                               ; preds = %28, %24
  %39 = load i32, i32* %3, align 4
  ret i32 %39
}

declare dso_local i32 @BUG(i8*) #1

declare dso_local i64 @getenv(i32) #1

declare dso_local i32 @strbuf_addstr(%struct.strbuf*, i32) #1

declare dso_local i32 @_(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
