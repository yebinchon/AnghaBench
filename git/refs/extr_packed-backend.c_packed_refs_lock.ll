; ModuleID = '/home/carl/AnghaBench/git/refs/extr_packed-backend.c_packed_refs_lock.c'
source_filename = "/home/carl/AnghaBench/git/refs/extr_packed-backend.c_packed_refs_lock.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ref_store = type { i32 }
%struct.strbuf = type { i32 }
%struct.packed_ref_store = type { i32, i32 }

@REF_STORE_WRITE = common dso_local global i32 0, align 4
@REF_STORE_MAIN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [17 x i8] c"packed_refs_lock\00", align 1
@packed_refs_lock.timeout_configured = internal global i32 0, align 4
@packed_refs_lock.timeout_value = internal global i32 1000, align 4
@.str.1 = private unnamed_addr constant [23 x i8] c"core.packedrefstimeout\00", align 1
@errno = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [23 x i8] c"unable to close %s: %s\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @packed_refs_lock(%struct.ref_store* %0, i32 %1, %struct.strbuf* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.ref_store*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.strbuf*, align 8
  %8 = alloca %struct.packed_ref_store*, align 8
  store %struct.ref_store* %0, %struct.ref_store** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.strbuf* %2, %struct.strbuf** %7, align 8
  %9 = load %struct.ref_store*, %struct.ref_store** %5, align 8
  %10 = load i32, i32* @REF_STORE_WRITE, align 4
  %11 = load i32, i32* @REF_STORE_MAIN, align 4
  %12 = or i32 %10, %11
  %13 = call %struct.packed_ref_store* @packed_downcast(%struct.ref_store* %9, i32 %12, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0))
  store %struct.packed_ref_store* %13, %struct.packed_ref_store** %8, align 8
  %14 = load i32, i32* @packed_refs_lock.timeout_configured, align 4
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %18, label %16

16:                                               ; preds = %3
  %17 = call i32 @git_config_get_int(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i32* @packed_refs_lock.timeout_value)
  store i32 1, i32* @packed_refs_lock.timeout_configured, align 4
  br label %18

18:                                               ; preds = %16, %3
  %19 = load %struct.packed_ref_store*, %struct.packed_ref_store** %8, align 8
  %20 = getelementptr inbounds %struct.packed_ref_store, %struct.packed_ref_store* %19, i32 0, i32 0
  %21 = load %struct.packed_ref_store*, %struct.packed_ref_store** %8, align 8
  %22 = getelementptr inbounds %struct.packed_ref_store, %struct.packed_ref_store* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 4
  %24 = load i32, i32* %6, align 4
  %25 = load i32, i32* @packed_refs_lock.timeout_value, align 4
  %26 = call i64 @hold_lock_file_for_update_timeout(i32* %20, i32 %23, i32 %24, i32 %25)
  %27 = icmp slt i64 %26, 0
  br i1 %27, label %28, label %35

28:                                               ; preds = %18
  %29 = load %struct.packed_ref_store*, %struct.packed_ref_store** %8, align 8
  %30 = getelementptr inbounds %struct.packed_ref_store, %struct.packed_ref_store* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 4
  %32 = load i32, i32* @errno, align 4
  %33 = load %struct.strbuf*, %struct.strbuf** %7, align 8
  %34 = call i32 @unable_to_lock_message(i32 %31, i32 %32, %struct.strbuf* %33)
  store i32 -1, i32* %4, align 4
  br label %56

35:                                               ; preds = %18
  %36 = load %struct.packed_ref_store*, %struct.packed_ref_store** %8, align 8
  %37 = getelementptr inbounds %struct.packed_ref_store, %struct.packed_ref_store* %36, i32 0, i32 0
  %38 = call i64 @close_lock_file_gently(i32* %37)
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %51

40:                                               ; preds = %35
  %41 = load %struct.strbuf*, %struct.strbuf** %7, align 8
  %42 = load %struct.packed_ref_store*, %struct.packed_ref_store** %8, align 8
  %43 = getelementptr inbounds %struct.packed_ref_store, %struct.packed_ref_store* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 4
  %45 = load i32, i32* @errno, align 4
  %46 = call i32 @strerror(i32 %45)
  %47 = call i32 @strbuf_addf(%struct.strbuf* %41, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.2, i64 0, i64 0), i32 %44, i32 %46)
  %48 = load %struct.packed_ref_store*, %struct.packed_ref_store** %8, align 8
  %49 = getelementptr inbounds %struct.packed_ref_store, %struct.packed_ref_store* %48, i32 0, i32 0
  %50 = call i32 @rollback_lock_file(i32* %49)
  store i32 -1, i32* %4, align 4
  br label %56

51:                                               ; preds = %35
  %52 = load %struct.packed_ref_store*, %struct.packed_ref_store** %8, align 8
  %53 = call i32 @clear_snapshot(%struct.packed_ref_store* %52)
  %54 = load %struct.packed_ref_store*, %struct.packed_ref_store** %8, align 8
  %55 = call i32 @get_snapshot(%struct.packed_ref_store* %54)
  store i32 0, i32* %4, align 4
  br label %56

56:                                               ; preds = %51, %40, %28
  %57 = load i32, i32* %4, align 4
  ret i32 %57
}

declare dso_local %struct.packed_ref_store* @packed_downcast(%struct.ref_store*, i32, i8*) #1

declare dso_local i32 @git_config_get_int(i8*, i32*) #1

declare dso_local i64 @hold_lock_file_for_update_timeout(i32*, i32, i32, i32) #1

declare dso_local i32 @unable_to_lock_message(i32, i32, %struct.strbuf*) #1

declare dso_local i64 @close_lock_file_gently(i32*) #1

declare dso_local i32 @strbuf_addf(%struct.strbuf*, i8*, i32, i32) #1

declare dso_local i32 @strerror(i32) #1

declare dso_local i32 @rollback_lock_file(i32*) #1

declare dso_local i32 @clear_snapshot(%struct.packed_ref_store*) #1

declare dso_local i32 @get_snapshot(%struct.packed_ref_store*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
