; ModuleID = '/home/carl/AnghaBench/git/refs/extr_files-backend.c_split_symref_update.c'
source_filename = "/home/carl/AnghaBench/git/refs/extr_files-backend.c_split_symref_update.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ref_update = type { i32, i32, %struct.ref_update*, i32, i32, i32 }
%struct.ref_transaction = type { i32 }
%struct.string_list = type { i32 }
%struct.strbuf = type { i32 }
%struct.string_list_item = type { %struct.ref_update* }

@.str = private unnamed_addr constant [74 x i8] c"multiple updates for '%s' (including one via symref '%s') are not allowed\00", align 1
@TRANSACTION_NAME_CONFLICT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [5 x i8] c"HEAD\00", align 1
@REF_UPDATE_VIA_HEAD = common dso_local global i32 0, align 4
@REF_LOG_ONLY = common dso_local global i32 0, align 4
@REF_NO_DEREF = common dso_local global i32 0, align 4
@REF_HAVE_OLD = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [43 x i8] c"%s unexpectedly found in affected_refnames\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ref_update*, i8*, %struct.ref_transaction*, %struct.string_list*, %struct.strbuf*)* @split_symref_update to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @split_symref_update(%struct.ref_update* %0, i8* %1, %struct.ref_transaction* %2, %struct.string_list* %3, %struct.strbuf* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.ref_update*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca %struct.ref_transaction*, align 8
  %10 = alloca %struct.string_list*, align 8
  %11 = alloca %struct.strbuf*, align 8
  %12 = alloca %struct.string_list_item*, align 8
  %13 = alloca %struct.ref_update*, align 8
  %14 = alloca i32, align 4
  store %struct.ref_update* %0, %struct.ref_update** %7, align 8
  store i8* %1, i8** %8, align 8
  store %struct.ref_transaction* %2, %struct.ref_transaction** %9, align 8
  store %struct.string_list* %3, %struct.string_list** %10, align 8
  store %struct.strbuf* %4, %struct.strbuf** %11, align 8
  %15 = load %struct.string_list*, %struct.string_list** %10, align 8
  %16 = load i8*, i8** %8, align 8
  %17 = call i64 @string_list_has_string(%struct.string_list* %15, i8* %16)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %27

19:                                               ; preds = %5
  %20 = load %struct.strbuf*, %struct.strbuf** %11, align 8
  %21 = load i8*, i8** %8, align 8
  %22 = load %struct.ref_update*, %struct.ref_update** %7, align 8
  %23 = getelementptr inbounds %struct.ref_update, %struct.ref_update* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 4
  %25 = call i32 @strbuf_addf(%struct.strbuf* %20, i8* getelementptr inbounds ([74 x i8], [74 x i8]* @.str, i64 0, i64 0), i8* %21, i32 %24)
  %26 = load i32, i32* @TRANSACTION_NAME_CONFLICT, align 4
  store i32 %26, i32* %6, align 4
  br label %86

27:                                               ; preds = %5
  %28 = load %struct.ref_update*, %struct.ref_update** %7, align 8
  %29 = getelementptr inbounds %struct.ref_update, %struct.ref_update* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  store i32 %30, i32* %14, align 4
  %31 = load %struct.ref_update*, %struct.ref_update** %7, align 8
  %32 = getelementptr inbounds %struct.ref_update, %struct.ref_update* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 4
  %34 = call i32 @strcmp(i32 %33, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0))
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %40, label %36

36:                                               ; preds = %27
  %37 = load i32, i32* @REF_UPDATE_VIA_HEAD, align 4
  %38 = load i32, i32* %14, align 4
  %39 = or i32 %38, %37
  store i32 %39, i32* %14, align 4
  br label %40

40:                                               ; preds = %36, %27
  %41 = load %struct.ref_transaction*, %struct.ref_transaction** %9, align 8
  %42 = load i8*, i8** %8, align 8
  %43 = load i32, i32* %14, align 4
  %44 = load %struct.ref_update*, %struct.ref_update** %7, align 8
  %45 = getelementptr inbounds %struct.ref_update, %struct.ref_update* %44, i32 0, i32 5
  %46 = load %struct.ref_update*, %struct.ref_update** %7, align 8
  %47 = getelementptr inbounds %struct.ref_update, %struct.ref_update* %46, i32 0, i32 4
  %48 = load %struct.ref_update*, %struct.ref_update** %7, align 8
  %49 = getelementptr inbounds %struct.ref_update, %struct.ref_update* %48, i32 0, i32 3
  %50 = load i32, i32* %49, align 8
  %51 = call %struct.ref_update* @ref_transaction_add_update(%struct.ref_transaction* %41, i8* %42, i32 %43, i32* %45, i32* %47, i32 %50)
  store %struct.ref_update* %51, %struct.ref_update** %13, align 8
  %52 = load %struct.ref_update*, %struct.ref_update** %7, align 8
  %53 = load %struct.ref_update*, %struct.ref_update** %13, align 8
  %54 = getelementptr inbounds %struct.ref_update, %struct.ref_update* %53, i32 0, i32 2
  store %struct.ref_update* %52, %struct.ref_update** %54, align 8
  %55 = load i32, i32* @REF_LOG_ONLY, align 4
  %56 = load i32, i32* @REF_NO_DEREF, align 4
  %57 = or i32 %55, %56
  %58 = load %struct.ref_update*, %struct.ref_update** %7, align 8
  %59 = getelementptr inbounds %struct.ref_update, %struct.ref_update* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 8
  %61 = or i32 %60, %57
  store i32 %61, i32* %59, align 8
  %62 = load i32, i32* @REF_HAVE_OLD, align 4
  %63 = xor i32 %62, -1
  %64 = load %struct.ref_update*, %struct.ref_update** %7, align 8
  %65 = getelementptr inbounds %struct.ref_update, %struct.ref_update* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 8
  %67 = and i32 %66, %63
  store i32 %67, i32* %65, align 8
  %68 = load %struct.string_list*, %struct.string_list** %10, align 8
  %69 = load %struct.ref_update*, %struct.ref_update** %13, align 8
  %70 = getelementptr inbounds %struct.ref_update, %struct.ref_update* %69, i32 0, i32 1
  %71 = load i32, i32* %70, align 4
  %72 = call %struct.string_list_item* @string_list_insert(%struct.string_list* %68, i32 %71)
  store %struct.string_list_item* %72, %struct.string_list_item** %12, align 8
  %73 = load %struct.string_list_item*, %struct.string_list_item** %12, align 8
  %74 = getelementptr inbounds %struct.string_list_item, %struct.string_list_item* %73, i32 0, i32 0
  %75 = load %struct.ref_update*, %struct.ref_update** %74, align 8
  %76 = icmp ne %struct.ref_update* %75, null
  br i1 %76, label %77, label %82

77:                                               ; preds = %40
  %78 = load %struct.ref_update*, %struct.ref_update** %13, align 8
  %79 = getelementptr inbounds %struct.ref_update, %struct.ref_update* %78, i32 0, i32 1
  %80 = load i32, i32* %79, align 4
  %81 = call i32 @BUG(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.2, i64 0, i64 0), i32 %80)
  br label %82

82:                                               ; preds = %77, %40
  %83 = load %struct.ref_update*, %struct.ref_update** %13, align 8
  %84 = load %struct.string_list_item*, %struct.string_list_item** %12, align 8
  %85 = getelementptr inbounds %struct.string_list_item, %struct.string_list_item* %84, i32 0, i32 0
  store %struct.ref_update* %83, %struct.ref_update** %85, align 8
  store i32 0, i32* %6, align 4
  br label %86

86:                                               ; preds = %82, %19
  %87 = load i32, i32* %6, align 4
  ret i32 %87
}

declare dso_local i64 @string_list_has_string(%struct.string_list*, i8*) #1

declare dso_local i32 @strbuf_addf(%struct.strbuf*, i8*, i8*, i32) #1

declare dso_local i32 @strcmp(i32, i8*) #1

declare dso_local %struct.ref_update* @ref_transaction_add_update(%struct.ref_transaction*, i8*, i32, i32*, i32*, i32) #1

declare dso_local %struct.string_list_item* @string_list_insert(%struct.string_list*, i32) #1

declare dso_local i32 @BUG(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
