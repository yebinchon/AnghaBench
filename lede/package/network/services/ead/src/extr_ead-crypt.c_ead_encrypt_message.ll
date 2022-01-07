; ModuleID = '/home/carl/AnghaBench/lede/package/network/services/ead/src/extr_ead-crypt.c_ead_encrypt_message.c'
source_filename = "/home/carl/AnghaBench/lede/package/network/services/ead/src/extr_ead-crypt.c_ead_encrypt_message.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ead_msg_encrypted = type { i32, i8**, i8* }
%struct.ead_msg = type { i8* }

@EAD_ENC_PAD = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [32 x i8] c"SHA1 generate (0x%08x), len=%d\0A\00", align 1
@aes_enc_ctx = common dso_local global i32 0, align 4
@enc = common dso_local global %struct.ead_msg_encrypted* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ead_encrypt_message(%struct.ead_msg* %0, i32 %1) #0 {
  %3 = alloca %struct.ead_msg*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.ead_msg_encrypted*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca [5 x i32], align 16
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.ead_msg* %0, %struct.ead_msg** %3, align 8
  store i32 %1, i32* %4, align 4
  %10 = load %struct.ead_msg*, %struct.ead_msg** %3, align 8
  %11 = load %struct.ead_msg_encrypted*, %struct.ead_msg_encrypted** %5, align 8
  %12 = ptrtoint %struct.ead_msg_encrypted* %11 to i32
  %13 = call %struct.ead_msg_encrypted* @EAD_DATA(%struct.ead_msg* %10, i32 %12)
  store %struct.ead_msg_encrypted* %13, %struct.ead_msg_encrypted** %5, align 8
  %14 = load %struct.ead_msg_encrypted*, %struct.ead_msg_encrypted** %5, align 8
  %15 = bitcast %struct.ead_msg_encrypted* %14 to i8*
  store i8* %15, i8** %6, align 8
  %16 = load i32, i32* %4, align 4
  %17 = zext i32 %16 to i64
  %18 = add i64 %17, 24
  %19 = trunc i64 %18 to i32
  store i32 %19, i32* %4, align 4
  %20 = load i32, i32* @EAD_ENC_PAD, align 4
  %21 = load i32, i32* %4, align 4
  %22 = load i32, i32* @EAD_ENC_PAD, align 4
  %23 = urem i32 %21, %22
  %24 = sub i32 %20, %23
  %25 = load i32, i32* @EAD_ENC_PAD, align 4
  %26 = urem i32 %24, %25
  %27 = load %struct.ead_msg_encrypted*, %struct.ead_msg_encrypted** %5, align 8
  %28 = getelementptr inbounds %struct.ead_msg_encrypted, %struct.ead_msg_encrypted* %27, i32 0, i32 0
  store i32 %26, i32* %28, align 8
  %29 = load i32, i32* %4, align 4
  %30 = load %struct.ead_msg_encrypted*, %struct.ead_msg_encrypted** %5, align 8
  %31 = getelementptr inbounds %struct.ead_msg_encrypted, %struct.ead_msg_encrypted* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = add i32 %29, %32
  store i32 %33, i32* %8, align 4
  %34 = load i32, i32* %8, align 4
  %35 = call i8* @htonl(i32 %34)
  %36 = load %struct.ead_msg*, %struct.ead_msg** %3, align 8
  %37 = getelementptr inbounds %struct.ead_msg, %struct.ead_msg* %36, i32 0, i32 0
  store i8* %35, i8** %37, align 8
  %38 = call i32 (...) @ead_get_tx_iv()
  %39 = call i8* @htonl(i32 %38)
  %40 = load %struct.ead_msg_encrypted*, %struct.ead_msg_encrypted** %5, align 8
  %41 = getelementptr inbounds %struct.ead_msg_encrypted, %struct.ead_msg_encrypted* %40, i32 0, i32 2
  store i8* %39, i8** %41, align 8
  %42 = load %struct.ead_msg_encrypted*, %struct.ead_msg_encrypted** %5, align 8
  %43 = getelementptr inbounds [5 x i32], [5 x i32]* %7, i64 0, i64 0
  %44 = load i32, i32* %8, align 4
  %45 = call i32 @ead_hash_message(%struct.ead_msg_encrypted* %42, i32* %43, i32 %44)
  store i32 0, i32* %9, align 4
  br label %46

46:                                               ; preds = %61, %2
  %47 = load i32, i32* %9, align 4
  %48 = icmp slt i32 %47, 5
  br i1 %48, label %49, label %64

49:                                               ; preds = %46
  %50 = load i32, i32* %9, align 4
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds [5 x i32], [5 x i32]* %7, i64 0, i64 %51
  %53 = load i32, i32* %52, align 4
  %54 = call i8* @htonl(i32 %53)
  %55 = load %struct.ead_msg_encrypted*, %struct.ead_msg_encrypted** %5, align 8
  %56 = getelementptr inbounds %struct.ead_msg_encrypted, %struct.ead_msg_encrypted* %55, i32 0, i32 1
  %57 = load i8**, i8*** %56, align 8
  %58 = load i32, i32* %9, align 4
  %59 = sext i32 %58 to i64
  %60 = getelementptr inbounds i8*, i8** %57, i64 %59
  store i8* %54, i8** %60, align 8
  br label %61

61:                                               ; preds = %49
  %62 = load i32, i32* %9, align 4
  %63 = add nsw i32 %62, 1
  store i32 %63, i32* %9, align 4
  br label %46

64:                                               ; preds = %46
  %65 = load %struct.ead_msg_encrypted*, %struct.ead_msg_encrypted** %5, align 8
  %66 = getelementptr inbounds %struct.ead_msg_encrypted, %struct.ead_msg_encrypted* %65, i32 0, i32 1
  %67 = load i8**, i8*** %66, align 8
  %68 = getelementptr inbounds i8*, i8** %67, i64 0
  %69 = load i8*, i8** %68, align 8
  %70 = load i32, i32* %8, align 4
  %71 = call i32 @DEBUG(i32 2, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0), i8* %69, i32 %70)
  br label %72

72:                                               ; preds = %75, %64
  %73 = load i32, i32* %8, align 4
  %74 = icmp sgt i32 %73, 0
  br i1 %74, label %75, label %84

75:                                               ; preds = %72
  %76 = load i32, i32* @aes_enc_ctx, align 4
  %77 = load i8*, i8** %6, align 8
  %78 = load i8*, i8** %6, align 8
  %79 = call i32 @rijndaelEncrypt(i32 %76, i8* %77, i8* %78)
  %80 = load i8*, i8** %6, align 8
  %81 = getelementptr inbounds i8, i8* %80, i64 16
  store i8* %81, i8** %6, align 8
  %82 = load i32, i32* %8, align 4
  %83 = sub nsw i32 %82, 16
  store i32 %83, i32* %8, align 4
  br label %72

84:                                               ; preds = %72
  ret void
}

declare dso_local %struct.ead_msg_encrypted* @EAD_DATA(%struct.ead_msg*, i32) #1

declare dso_local i8* @htonl(i32) #1

declare dso_local i32 @ead_get_tx_iv(...) #1

declare dso_local i32 @ead_hash_message(%struct.ead_msg_encrypted*, i32*, i32) #1

declare dso_local i32 @DEBUG(i32, i8*, i8*, i32) #1

declare dso_local i32 @rijndaelEncrypt(i32, i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
