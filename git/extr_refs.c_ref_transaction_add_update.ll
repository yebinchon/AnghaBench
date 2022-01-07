; ModuleID = '/home/carl/AnghaBench/git/extr_refs.c_ref_transaction_add_update.c'
source_filename = "/home/carl/AnghaBench/git/extr_refs.c_ref_transaction_add_update.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ref_update = type { i32, i32, i32, i32 }
%struct.ref_transaction = type { i64, i64, %struct.ref_update**, i32 }
%struct.object_id = type { i32 }

@REF_TRANSACTION_OPEN = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [47 x i8] c"update called for transaction that is not open\00", align 1
@REF_HAVE_NEW = common dso_local global i32 0, align 4
@REF_HAVE_OLD = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.ref_update* @ref_transaction_add_update(%struct.ref_transaction* %0, i8* %1, i32 %2, %struct.object_id* %3, %struct.object_id* %4, i8* %5) #0 {
  %7 = alloca %struct.ref_transaction*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.object_id*, align 8
  %11 = alloca %struct.object_id*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca %struct.ref_update*, align 8
  store %struct.ref_transaction* %0, %struct.ref_transaction** %7, align 8
  store i8* %1, i8** %8, align 8
  store i32 %2, i32* %9, align 4
  store %struct.object_id* %3, %struct.object_id** %10, align 8
  store %struct.object_id* %4, %struct.object_id** %11, align 8
  store i8* %5, i8** %12, align 8
  %14 = load %struct.ref_transaction*, %struct.ref_transaction** %7, align 8
  %15 = getelementptr inbounds %struct.ref_transaction, %struct.ref_transaction* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = load i64, i64* @REF_TRANSACTION_OPEN, align 8
  %18 = icmp ne i64 %16, %17
  br i1 %18, label %19, label %21

19:                                               ; preds = %6
  %20 = call i32 @BUG(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str, i64 0, i64 0))
  br label %21

21:                                               ; preds = %19, %6
  %22 = load %struct.ref_update*, %struct.ref_update** %13, align 8
  %23 = load i8*, i8** %8, align 8
  %24 = load i8*, i8** %8, align 8
  %25 = call i32 @FLEX_ALLOC_STR(%struct.ref_update* %22, i8* %23, i8* %24)
  %26 = load %struct.ref_transaction*, %struct.ref_transaction** %7, align 8
  %27 = getelementptr inbounds %struct.ref_transaction, %struct.ref_transaction* %26, i32 0, i32 2
  %28 = load %struct.ref_update**, %struct.ref_update*** %27, align 8
  %29 = load %struct.ref_transaction*, %struct.ref_transaction** %7, align 8
  %30 = getelementptr inbounds %struct.ref_transaction, %struct.ref_transaction* %29, i32 0, i32 1
  %31 = load i64, i64* %30, align 8
  %32 = add nsw i64 %31, 1
  %33 = load %struct.ref_transaction*, %struct.ref_transaction** %7, align 8
  %34 = getelementptr inbounds %struct.ref_transaction, %struct.ref_transaction* %33, i32 0, i32 3
  %35 = load i32, i32* %34, align 8
  %36 = call i32 @ALLOC_GROW(%struct.ref_update** %28, i64 %32, i32 %35)
  %37 = load %struct.ref_update*, %struct.ref_update** %13, align 8
  %38 = load %struct.ref_transaction*, %struct.ref_transaction** %7, align 8
  %39 = getelementptr inbounds %struct.ref_transaction, %struct.ref_transaction* %38, i32 0, i32 2
  %40 = load %struct.ref_update**, %struct.ref_update*** %39, align 8
  %41 = load %struct.ref_transaction*, %struct.ref_transaction** %7, align 8
  %42 = getelementptr inbounds %struct.ref_transaction, %struct.ref_transaction* %41, i32 0, i32 1
  %43 = load i64, i64* %42, align 8
  %44 = add nsw i64 %43, 1
  store i64 %44, i64* %42, align 8
  %45 = getelementptr inbounds %struct.ref_update*, %struct.ref_update** %40, i64 %43
  store %struct.ref_update* %37, %struct.ref_update** %45, align 8
  %46 = load i32, i32* %9, align 4
  %47 = load %struct.ref_update*, %struct.ref_update** %13, align 8
  %48 = getelementptr inbounds %struct.ref_update, %struct.ref_update* %47, i32 0, i32 0
  store i32 %46, i32* %48, align 4
  %49 = load i32, i32* %9, align 4
  %50 = load i32, i32* @REF_HAVE_NEW, align 4
  %51 = and i32 %49, %50
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %58

53:                                               ; preds = %21
  %54 = load %struct.ref_update*, %struct.ref_update** %13, align 8
  %55 = getelementptr inbounds %struct.ref_update, %struct.ref_update* %54, i32 0, i32 3
  %56 = load %struct.object_id*, %struct.object_id** %10, align 8
  %57 = call i32 @oidcpy(i32* %55, %struct.object_id* %56)
  br label %58

58:                                               ; preds = %53, %21
  %59 = load i32, i32* %9, align 4
  %60 = load i32, i32* @REF_HAVE_OLD, align 4
  %61 = and i32 %59, %60
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %63, label %68

63:                                               ; preds = %58
  %64 = load %struct.ref_update*, %struct.ref_update** %13, align 8
  %65 = getelementptr inbounds %struct.ref_update, %struct.ref_update* %64, i32 0, i32 2
  %66 = load %struct.object_id*, %struct.object_id** %11, align 8
  %67 = call i32 @oidcpy(i32* %65, %struct.object_id* %66)
  br label %68

68:                                               ; preds = %63, %58
  %69 = load i8*, i8** %12, align 8
  %70 = call i32 @xstrdup_or_null(i8* %69)
  %71 = load %struct.ref_update*, %struct.ref_update** %13, align 8
  %72 = getelementptr inbounds %struct.ref_update, %struct.ref_update* %71, i32 0, i32 1
  store i32 %70, i32* %72, align 4
  %73 = load %struct.ref_update*, %struct.ref_update** %13, align 8
  ret %struct.ref_update* %73
}

declare dso_local i32 @BUG(i8*) #1

declare dso_local i32 @FLEX_ALLOC_STR(%struct.ref_update*, i8*, i8*) #1

declare dso_local i32 @ALLOC_GROW(%struct.ref_update**, i64, i32) #1

declare dso_local i32 @oidcpy(i32*, %struct.object_id*) #1

declare dso_local i32 @xstrdup_or_null(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
