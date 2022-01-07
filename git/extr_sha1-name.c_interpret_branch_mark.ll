; ModuleID = '/home/carl/AnghaBench/git/extr_sha1-name.c_interpret_branch_mark.c'
source_filename = "/home/carl/AnghaBench/git/extr_sha1-name.c_interpret_branch_mark.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.strbuf = type { i32 }
%struct.repository = type { i32 }
%struct.branch = type opaque

@STRBUF_INIT = common dso_local global %struct.strbuf zeroinitializer, align 4
@.str = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.repository*, i8*, i32, i32, %struct.strbuf*, i32 (i8*, i32)*, i8* (%struct.branch*, %struct.strbuf*)*, i32)* @interpret_branch_mark to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @interpret_branch_mark(%struct.repository* %0, i8* %1, i32 %2, i32 %3, %struct.strbuf* %4, i32 (i8*, i32)* %5, i8* (%struct.branch*, %struct.strbuf*)* %6, i32 %7) #0 {
  %9 = alloca i32, align 4
  %10 = alloca %struct.repository*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca %struct.strbuf*, align 8
  %15 = alloca i32 (i8*, i32)*, align 8
  %16 = alloca i8* (%struct.branch*, %struct.strbuf*)*, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca %struct.branch*, align 8
  %20 = alloca %struct.strbuf, align 4
  %21 = alloca i8*, align 8
  %22 = alloca i8*, align 8
  store %struct.repository* %0, %struct.repository** %10, align 8
  store i8* %1, i8** %11, align 8
  store i32 %2, i32* %12, align 4
  store i32 %3, i32* %13, align 4
  store %struct.strbuf* %4, %struct.strbuf** %14, align 8
  store i32 (i8*, i32)* %5, i32 (i8*, i32)** %15, align 8
  store i8* (%struct.branch*, %struct.strbuf*)* %6, i8* (%struct.branch*, %struct.strbuf*)** %16, align 8
  store i32 %7, i32* %17, align 4
  %23 = bitcast %struct.strbuf* %20 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %23, i8* align 4 bitcast (%struct.strbuf* @STRBUF_INIT to i8*), i64 4, i1 false)
  %24 = load i32 (i8*, i32)*, i32 (i8*, i32)** %15, align 8
  %25 = load i8*, i8** %11, align 8
  %26 = load i32, i32* %13, align 4
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds i8, i8* %25, i64 %27
  %29 = load i32, i32* %12, align 4
  %30 = load i32, i32* %13, align 4
  %31 = sub nsw i32 %29, %30
  %32 = call i32 %24(i8* %28, i32 %31)
  store i32 %32, i32* %18, align 4
  %33 = load i32, i32* %18, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %36, label %35

35:                                               ; preds = %8
  store i32 -1, i32* %9, align 4
  br label %79

36:                                               ; preds = %8
  %37 = load i8*, i8** %11, align 8
  %38 = load i32, i32* %13, align 4
  %39 = call i64 @memchr(i8* %37, i8 signext 58, i32 %38)
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %42

41:                                               ; preds = %36
  store i32 -1, i32* %9, align 4
  br label %79

42:                                               ; preds = %36
  %43 = load i32, i32* %13, align 4
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %53

45:                                               ; preds = %42
  %46 = load i8*, i8** %11, align 8
  %47 = load i32, i32* %13, align 4
  %48 = call i8* @xmemdupz(i8* %46, i32 %47)
  store i8* %48, i8** %22, align 8
  %49 = load i8*, i8** %22, align 8
  %50 = call %struct.branch* @branch_get(i8* %49)
  store %struct.branch* %50, %struct.branch** %19, align 8
  %51 = load i8*, i8** %22, align 8
  %52 = call i32 @free(i8* %51)
  br label %55

53:                                               ; preds = %42
  %54 = call %struct.branch* @branch_get(i8* null)
  store %struct.branch* %54, %struct.branch** %19, align 8
  br label %55

55:                                               ; preds = %53, %45
  %56 = load i8* (%struct.branch*, %struct.strbuf*)*, i8* (%struct.branch*, %struct.strbuf*)** %16, align 8
  %57 = load %struct.branch*, %struct.branch** %19, align 8
  %58 = call i8* %56(%struct.branch* %57, %struct.strbuf* %20)
  store i8* %58, i8** %21, align 8
  %59 = load i8*, i8** %21, align 8
  %60 = icmp ne i8* %59, null
  br i1 %60, label %65, label %61

61:                                               ; preds = %55
  %62 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %20, i32 0, i32 0
  %63 = load i32, i32* %62, align 4
  %64 = call i32 @die(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i32 %63)
  br label %65

65:                                               ; preds = %61, %55
  %66 = load i8*, i8** %21, align 8
  %67 = load i32, i32* %17, align 4
  %68 = call i32 @branch_interpret_allowed(i8* %66, i32 %67)
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %71, label %70

70:                                               ; preds = %65
  store i32 -1, i32* %9, align 4
  br label %79

71:                                               ; preds = %65
  %72 = load %struct.repository*, %struct.repository** %10, align 8
  %73 = load %struct.strbuf*, %struct.strbuf** %14, align 8
  %74 = load i8*, i8** %21, align 8
  %75 = call i32 @set_shortened_ref(%struct.repository* %72, %struct.strbuf* %73, i8* %74)
  %76 = load i32, i32* %18, align 4
  %77 = load i32, i32* %13, align 4
  %78 = add nsw i32 %76, %77
  store i32 %78, i32* %9, align 4
  br label %79

79:                                               ; preds = %71, %70, %41, %35
  %80 = load i32, i32* %9, align 4
  ret i32 %80
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i64 @memchr(i8*, i8 signext, i32) #2

declare dso_local i8* @xmemdupz(i8*, i32) #2

declare dso_local %struct.branch* @branch_get(i8*) #2

declare dso_local i32 @free(i8*) #2

declare dso_local i32 @die(i8*, i32) #2

declare dso_local i32 @branch_interpret_allowed(i8*, i32) #2

declare dso_local i32 @set_shortened_ref(%struct.repository*, %struct.strbuf*, i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
