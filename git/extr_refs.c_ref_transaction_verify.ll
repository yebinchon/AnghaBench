; ModuleID = '/home/carl/AnghaBench/git/extr_refs.c_ref_transaction_verify.c'
source_filename = "/home/carl/AnghaBench/git/extr_refs.c_ref_transaction_verify.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ref_transaction = type { i32 }
%struct.object_id = type { i32 }
%struct.strbuf = type { i32 }

@.str = private unnamed_addr constant [39 x i8] c"verify called with old_oid set to NULL\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ref_transaction_verify(%struct.ref_transaction* %0, i8* %1, %struct.object_id* %2, i32 %3, %struct.strbuf* %4) #0 {
  %6 = alloca %struct.ref_transaction*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.object_id*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.strbuf*, align 8
  store %struct.ref_transaction* %0, %struct.ref_transaction** %6, align 8
  store i8* %1, i8** %7, align 8
  store %struct.object_id* %2, %struct.object_id** %8, align 8
  store i32 %3, i32* %9, align 4
  store %struct.strbuf* %4, %struct.strbuf** %10, align 8
  %11 = load %struct.object_id*, %struct.object_id** %8, align 8
  %12 = icmp ne %struct.object_id* %11, null
  br i1 %12, label %15, label %13

13:                                               ; preds = %5
  %14 = call i32 @BUG(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0))
  br label %15

15:                                               ; preds = %13, %5
  %16 = load %struct.ref_transaction*, %struct.ref_transaction** %6, align 8
  %17 = load i8*, i8** %7, align 8
  %18 = load %struct.object_id*, %struct.object_id** %8, align 8
  %19 = load i32, i32* %9, align 4
  %20 = load %struct.strbuf*, %struct.strbuf** %10, align 8
  %21 = call i32 @ref_transaction_update(%struct.ref_transaction* %16, i8* %17, i32* null, %struct.object_id* %18, i32 %19, i32* null, %struct.strbuf* %20)
  ret i32 %21
}

declare dso_local i32 @BUG(i8*) #1

declare dso_local i32 @ref_transaction_update(%struct.ref_transaction*, i8*, i32*, %struct.object_id*, i32, i32*, %struct.strbuf*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
