; ModuleID = '/home/carl/AnghaBench/git/extr_gpg-interface.c_check_signature.c'
source_filename = "/home/carl/AnghaBench/git/extr_gpg-interface.c_check_signature.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.strbuf = type { i32 }
%struct.signature_check = type { i8, i8*, i8*, i32 }

@STRBUF_INIT = common dso_local global %struct.strbuf zeroinitializer, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @check_signature(i8* %0, i64 %1, i8* %2, i64 %3, %struct.signature_check* %4) #0 {
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.signature_check*, align 8
  %11 = alloca %struct.strbuf, align 4
  %12 = alloca %struct.strbuf, align 4
  %13 = alloca i32, align 4
  store i8* %0, i8** %6, align 8
  store i64 %1, i64* %7, align 8
  store i8* %2, i8** %8, align 8
  store i64 %3, i64* %9, align 8
  store %struct.signature_check* %4, %struct.signature_check** %10, align 8
  %14 = bitcast %struct.strbuf* %11 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %14, i8* align 4 bitcast (%struct.strbuf* @STRBUF_INIT to i8*), i64 4, i1 false)
  %15 = bitcast %struct.strbuf* %12 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %15, i8* align 4 bitcast (%struct.strbuf* @STRBUF_INIT to i8*), i64 4, i1 false)
  %16 = load %struct.signature_check*, %struct.signature_check** %10, align 8
  %17 = getelementptr inbounds %struct.signature_check, %struct.signature_check* %16, i32 0, i32 0
  store i8 78, i8* %17, align 8
  %18 = load i8*, i8** %6, align 8
  %19 = load i64, i64* %7, align 8
  %20 = load i8*, i8** %8, align 8
  %21 = load i64, i64* %9, align 8
  %22 = call i32 @verify_signed_buffer(i8* %18, i64 %19, i8* %20, i64 %21, %struct.strbuf* %11, %struct.strbuf* %12)
  store i32 %22, i32* %13, align 4
  %23 = load i32, i32* %13, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %30

25:                                               ; preds = %5
  %26 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %11, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %30, label %29

29:                                               ; preds = %25
  br label %60

30:                                               ; preds = %25, %5
  %31 = load i8*, i8** %6, align 8
  %32 = load i64, i64* %7, align 8
  %33 = call i32 @xmemdupz(i8* %31, i64 %32)
  %34 = load %struct.signature_check*, %struct.signature_check** %10, align 8
  %35 = getelementptr inbounds %struct.signature_check, %struct.signature_check* %34, i32 0, i32 3
  store i32 %33, i32* %35, align 8
  %36 = call i8* @strbuf_detach(%struct.strbuf* %11, i32* null)
  %37 = load %struct.signature_check*, %struct.signature_check** %10, align 8
  %38 = getelementptr inbounds %struct.signature_check, %struct.signature_check* %37, i32 0, i32 2
  store i8* %36, i8** %38, align 8
  %39 = call i8* @strbuf_detach(%struct.strbuf* %12, i32* null)
  %40 = load %struct.signature_check*, %struct.signature_check** %10, align 8
  %41 = getelementptr inbounds %struct.signature_check, %struct.signature_check* %40, i32 0, i32 1
  store i8* %39, i8** %41, align 8
  %42 = load %struct.signature_check*, %struct.signature_check** %10, align 8
  %43 = call i32 @parse_gpg_output(%struct.signature_check* %42)
  %44 = load %struct.signature_check*, %struct.signature_check** %10, align 8
  %45 = getelementptr inbounds %struct.signature_check, %struct.signature_check* %44, i32 0, i32 0
  %46 = load i8, i8* %45, align 8
  %47 = sext i8 %46 to i32
  %48 = icmp ne i32 %47, 71
  br i1 %48, label %49, label %55

49:                                               ; preds = %30
  %50 = load %struct.signature_check*, %struct.signature_check** %10, align 8
  %51 = getelementptr inbounds %struct.signature_check, %struct.signature_check* %50, i32 0, i32 0
  %52 = load i8, i8* %51, align 8
  %53 = sext i8 %52 to i32
  %54 = icmp ne i32 %53, 85
  br label %55

55:                                               ; preds = %49, %30
  %56 = phi i1 [ false, %30 ], [ %54, %49 ]
  %57 = zext i1 %56 to i32
  %58 = load i32, i32* %13, align 4
  %59 = or i32 %58, %57
  store i32 %59, i32* %13, align 4
  br label %60

60:                                               ; preds = %55, %29
  %61 = call i32 @strbuf_release(%struct.strbuf* %12)
  %62 = call i32 @strbuf_release(%struct.strbuf* %11)
  %63 = load i32, i32* %13, align 4
  %64 = icmp ne i32 %63, 0
  %65 = xor i1 %64, true
  %66 = xor i1 %65, true
  %67 = zext i1 %66 to i32
  ret i32 %67
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @verify_signed_buffer(i8*, i64, i8*, i64, %struct.strbuf*, %struct.strbuf*) #2

declare dso_local i32 @xmemdupz(i8*, i64) #2

declare dso_local i8* @strbuf_detach(%struct.strbuf*, i32*) #2

declare dso_local i32 @parse_gpg_output(%struct.signature_check*) #2

declare dso_local i32 @strbuf_release(%struct.strbuf*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
