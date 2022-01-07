; ModuleID = '/home/carl/AnghaBench/git/refs/extr_packed-backend.c_packed_refs_unlock.c'
source_filename = "/home/carl/AnghaBench/git/refs/extr_packed-backend.c_packed_refs_unlock.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ref_store = type { i32 }
%struct.packed_ref_store = type { i32 }

@REF_STORE_READ = common dso_local global i32 0, align 4
@REF_STORE_WRITE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [19 x i8] c"packed_refs_unlock\00", align 1
@.str.1 = private unnamed_addr constant [44 x i8] c"packed_refs_unlock() called when not locked\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @packed_refs_unlock(%struct.ref_store* %0) #0 {
  %2 = alloca %struct.ref_store*, align 8
  %3 = alloca %struct.packed_ref_store*, align 8
  store %struct.ref_store* %0, %struct.ref_store** %2, align 8
  %4 = load %struct.ref_store*, %struct.ref_store** %2, align 8
  %5 = load i32, i32* @REF_STORE_READ, align 4
  %6 = load i32, i32* @REF_STORE_WRITE, align 4
  %7 = or i32 %5, %6
  %8 = call %struct.packed_ref_store* @packed_downcast(%struct.ref_store* %4, i32 %7, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0))
  store %struct.packed_ref_store* %8, %struct.packed_ref_store** %3, align 8
  %9 = load %struct.packed_ref_store*, %struct.packed_ref_store** %3, align 8
  %10 = getelementptr inbounds %struct.packed_ref_store, %struct.packed_ref_store* %9, i32 0, i32 0
  %11 = call i32 @is_lock_file_locked(i32* %10)
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %15, label %13

13:                                               ; preds = %1
  %14 = call i32 @BUG(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.1, i64 0, i64 0))
  br label %15

15:                                               ; preds = %13, %1
  %16 = load %struct.packed_ref_store*, %struct.packed_ref_store** %3, align 8
  %17 = getelementptr inbounds %struct.packed_ref_store, %struct.packed_ref_store* %16, i32 0, i32 0
  %18 = call i32 @rollback_lock_file(i32* %17)
  ret void
}

declare dso_local %struct.packed_ref_store* @packed_downcast(%struct.ref_store*, i32, i8*) #1

declare dso_local i32 @is_lock_file_locked(i32*) #1

declare dso_local i32 @BUG(i8*) #1

declare dso_local i32 @rollback_lock_file(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
