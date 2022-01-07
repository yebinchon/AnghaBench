; ModuleID = '/home/carl/AnghaBench/git/extr_refs.c_ref_transaction_abort.c'
source_filename = "/home/carl/AnghaBench/git/extr_refs.c_ref_transaction_abort.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ref_transaction = type { i32, %struct.ref_store* }
%struct.ref_store = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 (%struct.ref_store*, %struct.ref_transaction*, %struct.strbuf*)* }
%struct.strbuf = type { i32 }

@.str = private unnamed_addr constant [47 x i8] c"abort called on a closed reference transaction\00", align 1
@.str.1 = private unnamed_addr constant [39 x i8] c"unexpected reference transaction state\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ref_transaction_abort(%struct.ref_transaction* %0, %struct.strbuf* %1) #0 {
  %3 = alloca %struct.ref_transaction*, align 8
  %4 = alloca %struct.strbuf*, align 8
  %5 = alloca %struct.ref_store*, align 8
  %6 = alloca i32, align 4
  store %struct.ref_transaction* %0, %struct.ref_transaction** %3, align 8
  store %struct.strbuf* %1, %struct.strbuf** %4, align 8
  %7 = load %struct.ref_transaction*, %struct.ref_transaction** %3, align 8
  %8 = getelementptr inbounds %struct.ref_transaction, %struct.ref_transaction* %7, i32 0, i32 1
  %9 = load %struct.ref_store*, %struct.ref_store** %8, align 8
  store %struct.ref_store* %9, %struct.ref_store** %5, align 8
  store i32 0, i32* %6, align 4
  %10 = load %struct.ref_transaction*, %struct.ref_transaction** %3, align 8
  %11 = getelementptr inbounds %struct.ref_transaction, %struct.ref_transaction* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  switch i32 %12, label %26 [
    i32 129, label %13
    i32 128, label %14
    i32 130, label %24
  ]

13:                                               ; preds = %2
  br label %28

14:                                               ; preds = %2
  %15 = load %struct.ref_store*, %struct.ref_store** %5, align 8
  %16 = getelementptr inbounds %struct.ref_store, %struct.ref_store* %15, i32 0, i32 0
  %17 = load %struct.TYPE_2__*, %struct.TYPE_2__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 0
  %19 = load i32 (%struct.ref_store*, %struct.ref_transaction*, %struct.strbuf*)*, i32 (%struct.ref_store*, %struct.ref_transaction*, %struct.strbuf*)** %18, align 8
  %20 = load %struct.ref_store*, %struct.ref_store** %5, align 8
  %21 = load %struct.ref_transaction*, %struct.ref_transaction** %3, align 8
  %22 = load %struct.strbuf*, %struct.strbuf** %4, align 8
  %23 = call i32 %19(%struct.ref_store* %20, %struct.ref_transaction* %21, %struct.strbuf* %22)
  store i32 %23, i32* %6, align 4
  br label %28

24:                                               ; preds = %2
  %25 = call i32 @BUG(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str, i64 0, i64 0))
  br label %28

26:                                               ; preds = %2
  %27 = call i32 @BUG(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.1, i64 0, i64 0))
  br label %28

28:                                               ; preds = %26, %24, %14, %13
  %29 = load %struct.ref_transaction*, %struct.ref_transaction** %3, align 8
  %30 = call i32 @ref_transaction_free(%struct.ref_transaction* %29)
  %31 = load i32, i32* %6, align 4
  ret i32 %31
}

declare dso_local i32 @BUG(i8*) #1

declare dso_local i32 @ref_transaction_free(%struct.ref_transaction*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
