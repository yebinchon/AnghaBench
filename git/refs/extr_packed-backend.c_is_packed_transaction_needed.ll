; ModuleID = '/home/carl/AnghaBench/git/refs/extr_packed-backend.c_is_packed_transaction_needed.c'
source_filename = "/home/carl/AnghaBench/git/refs/extr_packed-backend.c_is_packed_transaction_needed.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.strbuf = type { i32 }
%struct.ref_store = type { i32 }
%struct.ref_transaction = type { i64, %struct.ref_update** }
%struct.ref_update = type { i32, i32, i32 }
%struct.packed_ref_store = type { i32 }
%struct.object_id = type { i32 }

@REF_STORE_READ = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [29 x i8] c"is_packed_transaction_needed\00", align 1
@STRBUF_INIT = common dso_local global %struct.strbuf zeroinitializer, align 4
@.str.1 = private unnamed_addr constant [53 x i8] c"is_packed_transaction_needed() called while unlocked\00", align 1
@REF_HAVE_OLD = common dso_local global i32 0, align 4
@REF_HAVE_NEW = common dso_local global i32 0, align 4
@errno = common dso_local global i64 0, align 8
@ENOENT = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @is_packed_transaction_needed(%struct.ref_store* %0, %struct.ref_transaction* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ref_store*, align 8
  %5 = alloca %struct.ref_transaction*, align 8
  %6 = alloca %struct.packed_ref_store*, align 8
  %7 = alloca %struct.strbuf, align 4
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.ref_update*, align 8
  %11 = alloca %struct.ref_update*, align 8
  %12 = alloca i32, align 4
  %13 = alloca %struct.object_id, align 4
  store %struct.ref_store* %0, %struct.ref_store** %4, align 8
  store %struct.ref_transaction* %1, %struct.ref_transaction** %5, align 8
  %14 = load %struct.ref_store*, %struct.ref_store** %4, align 8
  %15 = load i32, i32* @REF_STORE_READ, align 4
  %16 = call %struct.packed_ref_store* @packed_downcast(%struct.ref_store* %14, i32 %15, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0))
  store %struct.packed_ref_store* %16, %struct.packed_ref_store** %6, align 8
  %17 = bitcast %struct.strbuf* %7 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %17, i8* align 4 bitcast (%struct.strbuf* @STRBUF_INIT to i8*), i64 4, i1 false)
  %18 = load %struct.packed_ref_store*, %struct.packed_ref_store** %6, align 8
  %19 = getelementptr inbounds %struct.packed_ref_store, %struct.packed_ref_store* %18, i32 0, i32 0
  %20 = call i32 @is_lock_file_locked(i32* %19)
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %24, label %22

22:                                               ; preds = %2
  %23 = call i32 @BUG(i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.1, i64 0, i64 0))
  br label %24

24:                                               ; preds = %22, %2
  store i64 0, i64* %8, align 8
  br label %25

25:                                               ; preds = %59, %24
  %26 = load i64, i64* %8, align 8
  %27 = load %struct.ref_transaction*, %struct.ref_transaction** %5, align 8
  %28 = getelementptr inbounds %struct.ref_transaction, %struct.ref_transaction* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = icmp ult i64 %26, %29
  br i1 %30, label %31, label %62

31:                                               ; preds = %25
  %32 = load %struct.ref_transaction*, %struct.ref_transaction** %5, align 8
  %33 = getelementptr inbounds %struct.ref_transaction, %struct.ref_transaction* %32, i32 0, i32 1
  %34 = load %struct.ref_update**, %struct.ref_update*** %33, align 8
  %35 = load i64, i64* %8, align 8
  %36 = getelementptr inbounds %struct.ref_update*, %struct.ref_update** %34, i64 %35
  %37 = load %struct.ref_update*, %struct.ref_update** %36, align 8
  store %struct.ref_update* %37, %struct.ref_update** %10, align 8
  %38 = load %struct.ref_update*, %struct.ref_update** %10, align 8
  %39 = getelementptr inbounds %struct.ref_update, %struct.ref_update* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = load i32, i32* @REF_HAVE_OLD, align 4
  %42 = and i32 %40, %41
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %45

44:                                               ; preds = %31
  store i32 1, i32* %3, align 4
  br label %102

45:                                               ; preds = %31
  %46 = load %struct.ref_update*, %struct.ref_update** %10, align 8
  %47 = getelementptr inbounds %struct.ref_update, %struct.ref_update* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = load i32, i32* @REF_HAVE_NEW, align 4
  %50 = and i32 %48, %49
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %58

52:                                               ; preds = %45
  %53 = load %struct.ref_update*, %struct.ref_update** %10, align 8
  %54 = getelementptr inbounds %struct.ref_update, %struct.ref_update* %53, i32 0, i32 2
  %55 = call i32 @is_null_oid(i32* %54)
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %58, label %57

57:                                               ; preds = %52
  store i32 1, i32* %3, align 4
  br label %102

58:                                               ; preds = %52, %45
  br label %59

59:                                               ; preds = %58
  %60 = load i64, i64* %8, align 8
  %61 = add i64 %60, 1
  store i64 %61, i64* %8, align 8
  br label %25

62:                                               ; preds = %25
  store i32 0, i32* %9, align 4
  store i64 0, i64* %8, align 8
  br label %63

63:                                               ; preds = %96, %62
  %64 = load i64, i64* %8, align 8
  %65 = load %struct.ref_transaction*, %struct.ref_transaction** %5, align 8
  %66 = getelementptr inbounds %struct.ref_transaction, %struct.ref_transaction* %65, i32 0, i32 0
  %67 = load i64, i64* %66, align 8
  %68 = icmp ult i64 %64, %67
  br i1 %68, label %69, label %99

69:                                               ; preds = %63
  %70 = load %struct.ref_transaction*, %struct.ref_transaction** %5, align 8
  %71 = getelementptr inbounds %struct.ref_transaction, %struct.ref_transaction* %70, i32 0, i32 1
  %72 = load %struct.ref_update**, %struct.ref_update*** %71, align 8
  %73 = load i64, i64* %8, align 8
  %74 = getelementptr inbounds %struct.ref_update*, %struct.ref_update** %72, i64 %73
  %75 = load %struct.ref_update*, %struct.ref_update** %74, align 8
  store %struct.ref_update* %75, %struct.ref_update** %11, align 8
  %76 = load %struct.ref_update*, %struct.ref_update** %11, align 8
  %77 = getelementptr inbounds %struct.ref_update, %struct.ref_update* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 4
  %79 = load i32, i32* @REF_HAVE_NEW, align 4
  %80 = and i32 %78, %79
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %83, label %82

82:                                               ; preds = %69
  br label %96

83:                                               ; preds = %69
  %84 = load %struct.ref_store*, %struct.ref_store** %4, align 8
  %85 = load %struct.ref_update*, %struct.ref_update** %11, align 8
  %86 = getelementptr inbounds %struct.ref_update, %struct.ref_update* %85, i32 0, i32 1
  %87 = load i32, i32* %86, align 4
  %88 = call i32 @refs_read_raw_ref(%struct.ref_store* %84, i32 %87, %struct.object_id* %13, %struct.strbuf* %7, i32* %12)
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %90, label %94

90:                                               ; preds = %83
  %91 = load i64, i64* @errno, align 8
  %92 = load i64, i64* @ENOENT, align 8
  %93 = icmp ne i64 %91, %92
  br i1 %93, label %94, label %95

94:                                               ; preds = %90, %83
  store i32 1, i32* %9, align 4
  br label %99

95:                                               ; preds = %90
  br label %96

96:                                               ; preds = %95, %82
  %97 = load i64, i64* %8, align 8
  %98 = add i64 %97, 1
  store i64 %98, i64* %8, align 8
  br label %63

99:                                               ; preds = %94, %63
  %100 = call i32 @strbuf_release(%struct.strbuf* %7)
  %101 = load i32, i32* %9, align 4
  store i32 %101, i32* %3, align 4
  br label %102

102:                                              ; preds = %99, %57, %44
  %103 = load i32, i32* %3, align 4
  ret i32 %103
}

declare dso_local %struct.packed_ref_store* @packed_downcast(%struct.ref_store*, i32, i8*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @is_lock_file_locked(i32*) #1

declare dso_local i32 @BUG(i8*) #1

declare dso_local i32 @is_null_oid(i32*) #1

declare dso_local i32 @refs_read_raw_ref(%struct.ref_store*, i32, %struct.object_id*, %struct.strbuf*, i32*) #1

declare dso_local i32 @strbuf_release(%struct.strbuf*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
