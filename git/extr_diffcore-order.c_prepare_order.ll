; ModuleID = '/home/carl/AnghaBench/git/extr_diffcore-order.c_prepare_order.c'
source_filename = "/home/carl/AnghaBench/git/extr_diffcore-order.c_prepare_order.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.strbuf = type { i32 }

@STRBUF_INIT = common dso_local global %struct.strbuf zeroinitializer, align 4
@order = common dso_local global i8** null, align 8
@.str = private unnamed_addr constant [30 x i8] c"failed to read orderfile '%s'\00", align 1
@order_cnt = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*)* @prepare_order to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @prepare_order(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.strbuf, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i8*, align 8
  store i8* %0, i8** %2, align 8
  %11 = bitcast %struct.strbuf* %5 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %11, i8* align 4 bitcast (%struct.strbuf* @STRBUF_INIT to i8*), i64 4, i1 false)
  %12 = load i8**, i8*** @order, align 8
  %13 = icmp ne i8** %12, null
  br i1 %13, label %14, label %15

14:                                               ; preds = %1
  br label %122

15:                                               ; preds = %1
  %16 = load i8*, i8** %2, align 8
  %17 = call i64 @strbuf_read_file(%struct.strbuf* %5, i8* %16, i32 0)
  store i64 %17, i64* %9, align 8
  %18 = load i64, i64* %9, align 8
  %19 = icmp slt i64 %18, 0
  br i1 %19, label %20, label %24

20:                                               ; preds = %15
  %21 = call i32 @_(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0))
  %22 = load i8*, i8** %2, align 8
  %23 = call i32 @die_errno(i32 %21, i8* %22)
  br label %24

24:                                               ; preds = %20, %15
  %25 = call i8* @strbuf_detach(%struct.strbuf* %5, i32* null)
  store i8* %25, i8** %6, align 8
  %26 = load i8*, i8** %6, align 8
  %27 = load i64, i64* %9, align 8
  %28 = getelementptr inbounds i8, i8* %26, i64 %27
  store i8* %28, i8** %8, align 8
  store i32 0, i32* %4, align 4
  br label %29

29:                                               ; preds = %119, %24
  %30 = load i32, i32* %4, align 4
  %31 = icmp slt i32 %30, 2
  br i1 %31, label %32, label %122

32:                                               ; preds = %29
  store i32 0, i32* %3, align 4
  %33 = load i8*, i8** %6, align 8
  store i8* %33, i8** %7, align 8
  br label %34

34:                                               ; preds = %108, %32
  %35 = load i8*, i8** %7, align 8
  %36 = load i8*, i8** %8, align 8
  %37 = icmp ult i8* %35, %36
  br i1 %37, label %38, label %110

38:                                               ; preds = %34
  %39 = load i8*, i8** %7, align 8
  store i8* %39, i8** %10, align 8
  br label %40

40:                                               ; preds = %52, %38
  %41 = load i8*, i8** %10, align 8
  %42 = load i8*, i8** %8, align 8
  %43 = icmp ult i8* %41, %42
  br i1 %43, label %44, label %49

44:                                               ; preds = %40
  %45 = load i8*, i8** %10, align 8
  %46 = load i8, i8* %45, align 1
  %47 = sext i8 %46 to i32
  %48 = icmp ne i32 %47, 10
  br label %49

49:                                               ; preds = %44, %40
  %50 = phi i1 [ false, %40 ], [ %48, %44 ]
  br i1 %50, label %51, label %55

51:                                               ; preds = %49
  br label %52

52:                                               ; preds = %51
  %53 = load i8*, i8** %10, align 8
  %54 = getelementptr inbounds i8, i8* %53, i32 1
  store i8* %54, i8** %10, align 8
  br label %40

55:                                               ; preds = %49
  %56 = load i8*, i8** %7, align 8
  %57 = load i8, i8* %56, align 1
  %58 = sext i8 %57 to i32
  %59 = icmp eq i32 %58, 10
  br i1 %59, label %65, label %60

60:                                               ; preds = %55
  %61 = load i8*, i8** %7, align 8
  %62 = load i8, i8* %61, align 1
  %63 = sext i8 %62 to i32
  %64 = icmp eq i32 %63, 35
  br i1 %64, label %65, label %66

65:                                               ; preds = %60, %55
  br label %101

66:                                               ; preds = %60
  %67 = load i32, i32* %4, align 4
  %68 = icmp eq i32 %67, 0
  br i1 %68, label %69, label %72

69:                                               ; preds = %66
  %70 = load i32, i32* %3, align 4
  %71 = add nsw i32 %70, 1
  store i32 %71, i32* %3, align 4
  br label %100

72:                                               ; preds = %66
  %73 = load i8*, i8** %10, align 8
  %74 = load i8, i8* %73, align 1
  %75 = sext i8 %74 to i32
  %76 = icmp eq i32 %75, 10
  br i1 %76, label %77, label %84

77:                                               ; preds = %72
  %78 = load i8*, i8** %10, align 8
  store i8 0, i8* %78, align 1
  %79 = load i8*, i8** %7, align 8
  %80 = load i8**, i8*** @order, align 8
  %81 = load i32, i32* %3, align 4
  %82 = sext i32 %81 to i64
  %83 = getelementptr inbounds i8*, i8** %80, i64 %82
  store i8* %79, i8** %83, align 8
  br label %97

84:                                               ; preds = %72
  %85 = load i8*, i8** %7, align 8
  %86 = load i8*, i8** %10, align 8
  %87 = load i8*, i8** %7, align 8
  %88 = ptrtoint i8* %86 to i64
  %89 = ptrtoint i8* %87 to i64
  %90 = sub i64 %88, %89
  %91 = trunc i64 %90 to i32
  %92 = call i8* @xmemdupz(i8* %85, i32 %91)
  %93 = load i8**, i8*** @order, align 8
  %94 = load i32, i32* %3, align 4
  %95 = sext i32 %94 to i64
  %96 = getelementptr inbounds i8*, i8** %93, i64 %95
  store i8* %92, i8** %96, align 8
  br label %97

97:                                               ; preds = %84, %77
  %98 = load i32, i32* %3, align 4
  %99 = add nsw i32 %98, 1
  store i32 %99, i32* %3, align 4
  br label %100

100:                                              ; preds = %97, %69
  br label %101

101:                                              ; preds = %100, %65
  %102 = load i8*, i8** %10, align 8
  %103 = load i8*, i8** %8, align 8
  %104 = icmp ult i8* %102, %103
  br i1 %104, label %105, label %108

105:                                              ; preds = %101
  %106 = load i8*, i8** %10, align 8
  %107 = getelementptr inbounds i8, i8* %106, i32 1
  store i8* %107, i8** %10, align 8
  br label %108

108:                                              ; preds = %105, %101
  %109 = load i8*, i8** %10, align 8
  store i8* %109, i8** %7, align 8
  br label %34

110:                                              ; preds = %34
  %111 = load i32, i32* %4, align 4
  %112 = icmp eq i32 %111, 0
  br i1 %112, label %113, label %118

113:                                              ; preds = %110
  %114 = load i32, i32* %3, align 4
  store i32 %114, i32* @order_cnt, align 4
  %115 = load i8**, i8*** @order, align 8
  %116 = load i32, i32* %3, align 4
  %117 = call i32 @ALLOC_ARRAY(i8** %115, i32 %116)
  br label %118

118:                                              ; preds = %113, %110
  br label %119

119:                                              ; preds = %118
  %120 = load i32, i32* %4, align 4
  %121 = add nsw i32 %120, 1
  store i32 %121, i32* %4, align 4
  br label %29

122:                                              ; preds = %14, %29
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i64 @strbuf_read_file(%struct.strbuf*, i8*, i32) #2

declare dso_local i32 @die_errno(i32, i8*) #2

declare dso_local i32 @_(i8*) #2

declare dso_local i8* @strbuf_detach(%struct.strbuf*, i32*) #2

declare dso_local i8* @xmemdupz(i8*, i32) #2

declare dso_local i32 @ALLOC_ARRAY(i8**, i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
