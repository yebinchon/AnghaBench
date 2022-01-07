; ModuleID = '/home/carl/AnghaBench/git/refs/extr_packed-backend.c_packed_transaction_abort.c'
source_filename = "/home/carl/AnghaBench/git/refs/extr_packed-backend.c_packed_transaction_abort.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ref_store = type { i32 }
%struct.ref_transaction = type { i32 }
%struct.strbuf = type { i32 }
%struct.packed_ref_store = type { i32 }

@REF_STORE_READ = common dso_local global i32 0, align 4
@REF_STORE_WRITE = common dso_local global i32 0, align 4
@REF_STORE_ODB = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [22 x i8] c"ref_transaction_abort\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ref_store*, %struct.ref_transaction*, %struct.strbuf*)* @packed_transaction_abort to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @packed_transaction_abort(%struct.ref_store* %0, %struct.ref_transaction* %1, %struct.strbuf* %2) #0 {
  %4 = alloca %struct.ref_store*, align 8
  %5 = alloca %struct.ref_transaction*, align 8
  %6 = alloca %struct.strbuf*, align 8
  %7 = alloca %struct.packed_ref_store*, align 8
  store %struct.ref_store* %0, %struct.ref_store** %4, align 8
  store %struct.ref_transaction* %1, %struct.ref_transaction** %5, align 8
  store %struct.strbuf* %2, %struct.strbuf** %6, align 8
  %8 = load %struct.ref_store*, %struct.ref_store** %4, align 8
  %9 = load i32, i32* @REF_STORE_READ, align 4
  %10 = load i32, i32* @REF_STORE_WRITE, align 4
  %11 = or i32 %9, %10
  %12 = load i32, i32* @REF_STORE_ODB, align 4
  %13 = or i32 %11, %12
  %14 = call %struct.packed_ref_store* @packed_downcast(%struct.ref_store* %8, i32 %13, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0))
  store %struct.packed_ref_store* %14, %struct.packed_ref_store** %7, align 8
  %15 = load %struct.packed_ref_store*, %struct.packed_ref_store** %7, align 8
  %16 = load %struct.ref_transaction*, %struct.ref_transaction** %5, align 8
  %17 = call i32 @packed_transaction_cleanup(%struct.packed_ref_store* %15, %struct.ref_transaction* %16)
  ret i32 0
}

declare dso_local %struct.packed_ref_store* @packed_downcast(%struct.ref_store*, i32, i8*) #1

declare dso_local i32 @packed_transaction_cleanup(%struct.packed_ref_store*, %struct.ref_transaction*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
