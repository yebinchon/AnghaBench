; ModuleID = '/home/carl/AnghaBench/git/extr_refs.c_ref_transaction_update.c'
source_filename = "/home/carl/AnghaBench/git/extr_refs.c_ref_transaction_update.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ref_transaction = type { i32 }
%struct.object_id = type { i32 }
%struct.strbuf = type { i32 }

@REFNAME_ALLOW_ONELEVEL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [42 x i8] c"refusing to update ref with bad name '%s'\00", align 1
@REF_TRANSACTION_UPDATE_ALLOWED_FLAGS = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [54 x i8] c"illegal flags 0x%x passed to ref_transaction_update()\00", align 1
@REF_HAVE_NEW = common dso_local global i32 0, align 4
@REF_HAVE_OLD = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ref_transaction_update(%struct.ref_transaction* %0, i8* %1, %struct.object_id* %2, %struct.object_id* %3, i32 %4, i8* %5, %struct.strbuf* %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca %struct.ref_transaction*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca %struct.object_id*, align 8
  %12 = alloca %struct.object_id*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i8*, align 8
  %15 = alloca %struct.strbuf*, align 8
  store %struct.ref_transaction* %0, %struct.ref_transaction** %9, align 8
  store i8* %1, i8** %10, align 8
  store %struct.object_id* %2, %struct.object_id** %11, align 8
  store %struct.object_id* %3, %struct.object_id** %12, align 8
  store i32 %4, i32* %13, align 4
  store i8* %5, i8** %14, align 8
  store %struct.strbuf* %6, %struct.strbuf** %15, align 8
  %16 = load %struct.strbuf*, %struct.strbuf** %15, align 8
  %17 = call i32 @assert(%struct.strbuf* %16)
  %18 = load %struct.object_id*, %struct.object_id** %11, align 8
  %19 = icmp ne %struct.object_id* %18, null
  br i1 %19, label %20, label %29

20:                                               ; preds = %7
  %21 = load %struct.object_id*, %struct.object_id** %11, align 8
  %22 = call i32 @is_null_oid(%struct.object_id* %21)
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %29, label %24

24:                                               ; preds = %20
  %25 = load i8*, i8** %10, align 8
  %26 = load i32, i32* @REFNAME_ALLOW_ONELEVEL, align 4
  %27 = call i32 @check_refname_format(i8* %25, i32 %26)
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %33, label %38

29:                                               ; preds = %20, %7
  %30 = load i8*, i8** %10, align 8
  %31 = call i32 @refname_is_safe(i8* %30)
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %38, label %33

33:                                               ; preds = %29, %24
  %34 = load %struct.strbuf*, %struct.strbuf** %15, align 8
  %35 = call i32 @_(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str, i64 0, i64 0))
  %36 = load i8*, i8** %10, align 8
  %37 = call i32 @strbuf_addf(%struct.strbuf* %34, i32 %35, i8* %36)
  store i32 -1, i32* %8, align 4
  br label %72

38:                                               ; preds = %29, %24
  %39 = load i32, i32* %13, align 4
  %40 = load i32, i32* @REF_TRANSACTION_UPDATE_ALLOWED_FLAGS, align 4
  %41 = xor i32 %40, -1
  %42 = and i32 %39, %41
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %47

44:                                               ; preds = %38
  %45 = load i32, i32* %13, align 4
  %46 = call i32 @BUG(i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.1, i64 0, i64 0), i32 %45)
  br label %47

47:                                               ; preds = %44, %38
  %48 = load %struct.object_id*, %struct.object_id** %11, align 8
  %49 = icmp ne %struct.object_id* %48, null
  br i1 %49, label %50, label %52

50:                                               ; preds = %47
  %51 = load i32, i32* @REF_HAVE_NEW, align 4
  br label %53

52:                                               ; preds = %47
  br label %53

53:                                               ; preds = %52, %50
  %54 = phi i32 [ %51, %50 ], [ 0, %52 ]
  %55 = load %struct.object_id*, %struct.object_id** %12, align 8
  %56 = icmp ne %struct.object_id* %55, null
  br i1 %56, label %57, label %59

57:                                               ; preds = %53
  %58 = load i32, i32* @REF_HAVE_OLD, align 4
  br label %60

59:                                               ; preds = %53
  br label %60

60:                                               ; preds = %59, %57
  %61 = phi i32 [ %58, %57 ], [ 0, %59 ]
  %62 = or i32 %54, %61
  %63 = load i32, i32* %13, align 4
  %64 = or i32 %63, %62
  store i32 %64, i32* %13, align 4
  %65 = load %struct.ref_transaction*, %struct.ref_transaction** %9, align 8
  %66 = load i8*, i8** %10, align 8
  %67 = load i32, i32* %13, align 4
  %68 = load %struct.object_id*, %struct.object_id** %11, align 8
  %69 = load %struct.object_id*, %struct.object_id** %12, align 8
  %70 = load i8*, i8** %14, align 8
  %71 = call i32 @ref_transaction_add_update(%struct.ref_transaction* %65, i8* %66, i32 %67, %struct.object_id* %68, %struct.object_id* %69, i8* %70)
  store i32 0, i32* %8, align 4
  br label %72

72:                                               ; preds = %60, %33
  %73 = load i32, i32* %8, align 4
  ret i32 %73
}

declare dso_local i32 @assert(%struct.strbuf*) #1

declare dso_local i32 @is_null_oid(%struct.object_id*) #1

declare dso_local i32 @check_refname_format(i8*, i32) #1

declare dso_local i32 @refname_is_safe(i8*) #1

declare dso_local i32 @strbuf_addf(%struct.strbuf*, i32, i8*) #1

declare dso_local i32 @_(i8*) #1

declare dso_local i32 @BUG(i8*, i32) #1

declare dso_local i32 @ref_transaction_add_update(%struct.ref_transaction*, i8*, i32, %struct.object_id*, %struct.object_id*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
