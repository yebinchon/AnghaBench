; ModuleID = '/home/carl/AnghaBench/libgit2/deps/ntlmclient/extr_utf8.h_utf8chr.c'
source_filename = "/home/carl/AnghaBench/libgit2/deps/ntlmclient/extr_utf8.h_utf8chr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @utf8chr(i8* %0, i32 %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca [5 x i8], align 1
  %7 = alloca i8*, align 8
  store i8* %0, i8** %4, align 8
  store i32 %1, i32* %5, align 4
  %8 = bitcast [5 x i8]* %6 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 1 %8, i8 0, i64 5, i1 false)
  %9 = load i32, i32* %5, align 4
  %10 = icmp eq i32 0, %9
  br i1 %10, label %11, label %23

11:                                               ; preds = %2
  %12 = load i8*, i8** %4, align 8
  store i8* %12, i8** %7, align 8
  br label %13

13:                                               ; preds = %18, %11
  %14 = load i8*, i8** %7, align 8
  %15 = load i8, i8* %14, align 1
  %16 = sext i8 %15 to i32
  %17 = icmp ne i32 0, %16
  br i1 %17, label %18, label %21

18:                                               ; preds = %13
  %19 = load i8*, i8** %7, align 8
  %20 = getelementptr inbounds i8, i8* %19, i32 1
  store i8* %20, i8** %7, align 8
  br label %13

21:                                               ; preds = %13
  %22 = load i8*, i8** %7, align 8
  store i8* %22, i8** %3, align 8
  br label %115

23:                                               ; preds = %2
  %24 = load i32, i32* %5, align 4
  %25 = and i32 -128, %24
  %26 = icmp eq i32 0, %25
  br i1 %26, label %27, label %31

27:                                               ; preds = %23
  %28 = load i32, i32* %5, align 4
  %29 = trunc i32 %28 to i8
  %30 = getelementptr inbounds [5 x i8], [5 x i8]* %6, i64 0, i64 0
  store i8 %29, i8* %30, align 1
  br label %110

31:                                               ; preds = %23
  %32 = load i32, i32* %5, align 4
  %33 = and i32 -2048, %32
  %34 = icmp eq i32 0, %33
  br i1 %34, label %35, label %50

35:                                               ; preds = %31
  %36 = load i32, i32* %5, align 4
  %37 = ashr i32 %36, 6
  %38 = trunc i32 %37 to i8
  %39 = sext i8 %38 to i32
  %40 = or i32 192, %39
  %41 = trunc i32 %40 to i8
  %42 = getelementptr inbounds [5 x i8], [5 x i8]* %6, i64 0, i64 0
  store i8 %41, i8* %42, align 1
  %43 = load i32, i32* %5, align 4
  %44 = and i32 %43, 63
  %45 = trunc i32 %44 to i8
  %46 = sext i8 %45 to i32
  %47 = or i32 128, %46
  %48 = trunc i32 %47 to i8
  %49 = getelementptr inbounds [5 x i8], [5 x i8]* %6, i64 0, i64 1
  store i8 %48, i8* %49, align 1
  br label %109

50:                                               ; preds = %31
  %51 = load i32, i32* %5, align 4
  %52 = and i32 -65536, %51
  %53 = icmp eq i32 0, %52
  br i1 %53, label %54, label %77

54:                                               ; preds = %50
  %55 = load i32, i32* %5, align 4
  %56 = ashr i32 %55, 12
  %57 = trunc i32 %56 to i8
  %58 = sext i8 %57 to i32
  %59 = or i32 224, %58
  %60 = trunc i32 %59 to i8
  %61 = getelementptr inbounds [5 x i8], [5 x i8]* %6, i64 0, i64 0
  store i8 %60, i8* %61, align 1
  %62 = load i32, i32* %5, align 4
  %63 = ashr i32 %62, 6
  %64 = and i32 %63, 63
  %65 = trunc i32 %64 to i8
  %66 = sext i8 %65 to i32
  %67 = or i32 128, %66
  %68 = trunc i32 %67 to i8
  %69 = getelementptr inbounds [5 x i8], [5 x i8]* %6, i64 0, i64 1
  store i8 %68, i8* %69, align 1
  %70 = load i32, i32* %5, align 4
  %71 = and i32 %70, 63
  %72 = trunc i32 %71 to i8
  %73 = sext i8 %72 to i32
  %74 = or i32 128, %73
  %75 = trunc i32 %74 to i8
  %76 = getelementptr inbounds [5 x i8], [5 x i8]* %6, i64 0, i64 2
  store i8 %75, i8* %76, align 1
  br label %108

77:                                               ; preds = %50
  %78 = load i32, i32* %5, align 4
  %79 = ashr i32 %78, 18
  %80 = trunc i32 %79 to i8
  %81 = sext i8 %80 to i32
  %82 = or i32 240, %81
  %83 = trunc i32 %82 to i8
  %84 = getelementptr inbounds [5 x i8], [5 x i8]* %6, i64 0, i64 0
  store i8 %83, i8* %84, align 1
  %85 = load i32, i32* %5, align 4
  %86 = ashr i32 %85, 12
  %87 = and i32 %86, 63
  %88 = trunc i32 %87 to i8
  %89 = sext i8 %88 to i32
  %90 = or i32 128, %89
  %91 = trunc i32 %90 to i8
  %92 = getelementptr inbounds [5 x i8], [5 x i8]* %6, i64 0, i64 1
  store i8 %91, i8* %92, align 1
  %93 = load i32, i32* %5, align 4
  %94 = ashr i32 %93, 6
  %95 = and i32 %94, 63
  %96 = trunc i32 %95 to i8
  %97 = sext i8 %96 to i32
  %98 = or i32 128, %97
  %99 = trunc i32 %98 to i8
  %100 = getelementptr inbounds [5 x i8], [5 x i8]* %6, i64 0, i64 2
  store i8 %99, i8* %100, align 1
  %101 = load i32, i32* %5, align 4
  %102 = and i32 %101, 63
  %103 = trunc i32 %102 to i8
  %104 = sext i8 %103 to i32
  %105 = or i32 128, %104
  %106 = trunc i32 %105 to i8
  %107 = getelementptr inbounds [5 x i8], [5 x i8]* %6, i64 0, i64 3
  store i8 %106, i8* %107, align 1
  br label %108

108:                                              ; preds = %77, %54
  br label %109

109:                                              ; preds = %108, %35
  br label %110

110:                                              ; preds = %109, %27
  br label %111

111:                                              ; preds = %110
  %112 = load i8*, i8** %4, align 8
  %113 = getelementptr inbounds [5 x i8], [5 x i8]* %6, i64 0, i64 0
  %114 = call i8* @utf8str(i8* %112, i8* %113)
  store i8* %114, i8** %3, align 8
  br label %115

115:                                              ; preds = %111, %21
  %116 = load i8*, i8** %3, align 8
  ret i8* %116
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i8* @utf8str(i8*, i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
