; ModuleID = '/home/carl/AnghaBench/kphp-kdb/copyexec/extr_copyexec-data.c_get_transaction_f.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/copyexec/extr_copyexec-data.c_get_transaction_f.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, %struct.TYPE_4__* }

@HASH_MASK = common dso_local global i32 0, align 4
@H = common dso_local global i8** null, align 8
@.str = private unnamed_addr constant [44 x i8] c"get_transaction_f: calloc returns NULL. %m\0A\00", align 1
@tot_memory_transactions = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_4__* @get_transaction_f(i32 %0, i32 %1) #0 {
  %3 = alloca %struct.TYPE_4__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_4__**, align 8
  %8 = alloca %struct.TYPE_4__*, align 8
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  %9 = load i32, i32* %4, align 4
  %10 = load i32, i32* @HASH_MASK, align 4
  %11 = and i32 %9, %10
  store i32 %11, i32* %6, align 4
  %12 = load i8**, i8*** @H, align 8
  %13 = load i32, i32* %6, align 4
  %14 = sext i32 %13 to i64
  %15 = getelementptr inbounds i8*, i8** %12, i64 %14
  %16 = bitcast i8** %15 to %struct.TYPE_4__**
  store %struct.TYPE_4__** %16, %struct.TYPE_4__*** %7, align 8
  br label %17

17:                                               ; preds = %2, %53
  %18 = load %struct.TYPE_4__**, %struct.TYPE_4__*** %7, align 8
  %19 = load %struct.TYPE_4__*, %struct.TYPE_4__** %18, align 8
  store %struct.TYPE_4__* %19, %struct.TYPE_4__** %8, align 8
  %20 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %21 = icmp eq %struct.TYPE_4__* %20, null
  br i1 %21, label %22, label %23

22:                                               ; preds = %17
  br label %56

23:                                               ; preds = %17
  %24 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %25 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = load i32, i32* %4, align 4
  %28 = icmp eq i32 %26, %27
  br i1 %28, label %29, label %53

29:                                               ; preds = %23
  %30 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %31 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %30, i32 0, i32 1
  %32 = load %struct.TYPE_4__*, %struct.TYPE_4__** %31, align 8
  %33 = load %struct.TYPE_4__**, %struct.TYPE_4__*** %7, align 8
  store %struct.TYPE_4__* %32, %struct.TYPE_4__** %33, align 8
  %34 = load i32, i32* %5, align 4
  %35 = icmp sge i32 %34, 0
  br i1 %35, label %36, label %51

36:                                               ; preds = %29
  %37 = load i8**, i8*** @H, align 8
  %38 = load i32, i32* %6, align 4
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds i8*, i8** %37, i64 %39
  %41 = load i8*, i8** %40, align 8
  %42 = bitcast i8* %41 to %struct.TYPE_4__*
  %43 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %44 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %43, i32 0, i32 1
  store %struct.TYPE_4__* %42, %struct.TYPE_4__** %44, align 8
  %45 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %46 = bitcast %struct.TYPE_4__* %45 to i8*
  %47 = load i8**, i8*** @H, align 8
  %48 = load i32, i32* %6, align 4
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds i8*, i8** %47, i64 %49
  store i8* %46, i8** %50, align 8
  br label %51

51:                                               ; preds = %36, %29
  %52 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  store %struct.TYPE_4__* %52, %struct.TYPE_4__** %3, align 8
  br label %87

53:                                               ; preds = %23
  %54 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %55 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %54, i32 0, i32 1
  store %struct.TYPE_4__** %55, %struct.TYPE_4__*** %7, align 8
  br label %17

56:                                               ; preds = %22
  %57 = load i32, i32* %5, align 4
  %58 = icmp sgt i32 %57, 0
  br i1 %58, label %59, label %86

59:                                               ; preds = %56
  %60 = call %struct.TYPE_4__* @calloc(i32 1, i32 16)
  store %struct.TYPE_4__* %60, %struct.TYPE_4__** %8, align 8
  %61 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %62 = icmp eq %struct.TYPE_4__* %61, null
  br i1 %62, label %63, label %65

63:                                               ; preds = %59
  %64 = call i32 @kprintf(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str, i64 0, i64 0))
  store %struct.TYPE_4__* null, %struct.TYPE_4__** %3, align 8
  br label %87

65:                                               ; preds = %59
  %66 = load i32, i32* @tot_memory_transactions, align 4
  %67 = add nsw i32 %66, 1
  store i32 %67, i32* @tot_memory_transactions, align 4
  %68 = load i32, i32* %4, align 4
  %69 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %70 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %69, i32 0, i32 0
  store i32 %68, i32* %70, align 8
  %71 = load i8**, i8*** @H, align 8
  %72 = load i32, i32* %6, align 4
  %73 = sext i32 %72 to i64
  %74 = getelementptr inbounds i8*, i8** %71, i64 %73
  %75 = load i8*, i8** %74, align 8
  %76 = bitcast i8* %75 to %struct.TYPE_4__*
  %77 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %78 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %77, i32 0, i32 1
  store %struct.TYPE_4__* %76, %struct.TYPE_4__** %78, align 8
  %79 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %80 = bitcast %struct.TYPE_4__* %79 to i8*
  %81 = load i8**, i8*** @H, align 8
  %82 = load i32, i32* %6, align 4
  %83 = sext i32 %82 to i64
  %84 = getelementptr inbounds i8*, i8** %81, i64 %83
  store i8* %80, i8** %84, align 8
  %85 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  store %struct.TYPE_4__* %85, %struct.TYPE_4__** %3, align 8
  br label %87

86:                                               ; preds = %56
  store %struct.TYPE_4__* null, %struct.TYPE_4__** %3, align 8
  br label %87

87:                                               ; preds = %86, %65, %63, %51
  %88 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  ret %struct.TYPE_4__* %88
}

declare dso_local %struct.TYPE_4__* @calloc(i32, i32) #1

declare dso_local i32 @kprintf(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
