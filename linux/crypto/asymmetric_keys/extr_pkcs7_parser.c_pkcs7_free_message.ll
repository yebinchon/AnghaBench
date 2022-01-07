; ModuleID = '/home/carl/AnghaBench/linux/crypto/asymmetric_keys/extr_pkcs7_parser.c_pkcs7_free_message.c'
source_filename = "/home/carl/AnghaBench/linux/crypto/asymmetric_keys/extr_pkcs7_parser.c_pkcs7_free_message.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pkcs7_message = type { %struct.pkcs7_signed_info*, %struct.x509_certificate*, %struct.x509_certificate* }
%struct.pkcs7_signed_info = type { %struct.pkcs7_signed_info* }
%struct.x509_certificate = type { %struct.x509_certificate* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @pkcs7_free_message(%struct.pkcs7_message* %0) #0 {
  %2 = alloca %struct.pkcs7_message*, align 8
  %3 = alloca %struct.x509_certificate*, align 8
  %4 = alloca %struct.pkcs7_signed_info*, align 8
  store %struct.pkcs7_message* %0, %struct.pkcs7_message** %2, align 8
  %5 = load %struct.pkcs7_message*, %struct.pkcs7_message** %2, align 8
  %6 = icmp ne %struct.pkcs7_message* %5, null
  br i1 %6, label %7, label %61

7:                                                ; preds = %1
  br label %8

8:                                                ; preds = %13, %7
  %9 = load %struct.pkcs7_message*, %struct.pkcs7_message** %2, align 8
  %10 = getelementptr inbounds %struct.pkcs7_message, %struct.pkcs7_message* %9, i32 0, i32 2
  %11 = load %struct.x509_certificate*, %struct.x509_certificate** %10, align 8
  %12 = icmp ne %struct.x509_certificate* %11, null
  br i1 %12, label %13, label %24

13:                                               ; preds = %8
  %14 = load %struct.pkcs7_message*, %struct.pkcs7_message** %2, align 8
  %15 = getelementptr inbounds %struct.pkcs7_message, %struct.pkcs7_message* %14, i32 0, i32 2
  %16 = load %struct.x509_certificate*, %struct.x509_certificate** %15, align 8
  store %struct.x509_certificate* %16, %struct.x509_certificate** %3, align 8
  %17 = load %struct.x509_certificate*, %struct.x509_certificate** %3, align 8
  %18 = getelementptr inbounds %struct.x509_certificate, %struct.x509_certificate* %17, i32 0, i32 0
  %19 = load %struct.x509_certificate*, %struct.x509_certificate** %18, align 8
  %20 = load %struct.pkcs7_message*, %struct.pkcs7_message** %2, align 8
  %21 = getelementptr inbounds %struct.pkcs7_message, %struct.pkcs7_message* %20, i32 0, i32 2
  store %struct.x509_certificate* %19, %struct.x509_certificate** %21, align 8
  %22 = load %struct.x509_certificate*, %struct.x509_certificate** %3, align 8
  %23 = call i32 @x509_free_certificate(%struct.x509_certificate* %22)
  br label %8

24:                                               ; preds = %8
  br label %25

25:                                               ; preds = %30, %24
  %26 = load %struct.pkcs7_message*, %struct.pkcs7_message** %2, align 8
  %27 = getelementptr inbounds %struct.pkcs7_message, %struct.pkcs7_message* %26, i32 0, i32 1
  %28 = load %struct.x509_certificate*, %struct.x509_certificate** %27, align 8
  %29 = icmp ne %struct.x509_certificate* %28, null
  br i1 %29, label %30, label %41

30:                                               ; preds = %25
  %31 = load %struct.pkcs7_message*, %struct.pkcs7_message** %2, align 8
  %32 = getelementptr inbounds %struct.pkcs7_message, %struct.pkcs7_message* %31, i32 0, i32 1
  %33 = load %struct.x509_certificate*, %struct.x509_certificate** %32, align 8
  store %struct.x509_certificate* %33, %struct.x509_certificate** %3, align 8
  %34 = load %struct.x509_certificate*, %struct.x509_certificate** %3, align 8
  %35 = getelementptr inbounds %struct.x509_certificate, %struct.x509_certificate* %34, i32 0, i32 0
  %36 = load %struct.x509_certificate*, %struct.x509_certificate** %35, align 8
  %37 = load %struct.pkcs7_message*, %struct.pkcs7_message** %2, align 8
  %38 = getelementptr inbounds %struct.pkcs7_message, %struct.pkcs7_message* %37, i32 0, i32 1
  store %struct.x509_certificate* %36, %struct.x509_certificate** %38, align 8
  %39 = load %struct.x509_certificate*, %struct.x509_certificate** %3, align 8
  %40 = call i32 @x509_free_certificate(%struct.x509_certificate* %39)
  br label %25

41:                                               ; preds = %25
  br label %42

42:                                               ; preds = %47, %41
  %43 = load %struct.pkcs7_message*, %struct.pkcs7_message** %2, align 8
  %44 = getelementptr inbounds %struct.pkcs7_message, %struct.pkcs7_message* %43, i32 0, i32 0
  %45 = load %struct.pkcs7_signed_info*, %struct.pkcs7_signed_info** %44, align 8
  %46 = icmp ne %struct.pkcs7_signed_info* %45, null
  br i1 %46, label %47, label %58

47:                                               ; preds = %42
  %48 = load %struct.pkcs7_message*, %struct.pkcs7_message** %2, align 8
  %49 = getelementptr inbounds %struct.pkcs7_message, %struct.pkcs7_message* %48, i32 0, i32 0
  %50 = load %struct.pkcs7_signed_info*, %struct.pkcs7_signed_info** %49, align 8
  store %struct.pkcs7_signed_info* %50, %struct.pkcs7_signed_info** %4, align 8
  %51 = load %struct.pkcs7_signed_info*, %struct.pkcs7_signed_info** %4, align 8
  %52 = getelementptr inbounds %struct.pkcs7_signed_info, %struct.pkcs7_signed_info* %51, i32 0, i32 0
  %53 = load %struct.pkcs7_signed_info*, %struct.pkcs7_signed_info** %52, align 8
  %54 = load %struct.pkcs7_message*, %struct.pkcs7_message** %2, align 8
  %55 = getelementptr inbounds %struct.pkcs7_message, %struct.pkcs7_message* %54, i32 0, i32 0
  store %struct.pkcs7_signed_info* %53, %struct.pkcs7_signed_info** %55, align 8
  %56 = load %struct.pkcs7_signed_info*, %struct.pkcs7_signed_info** %4, align 8
  %57 = call i32 @pkcs7_free_signed_info(%struct.pkcs7_signed_info* %56)
  br label %42

58:                                               ; preds = %42
  %59 = load %struct.pkcs7_message*, %struct.pkcs7_message** %2, align 8
  %60 = call i32 @kfree(%struct.pkcs7_message* %59)
  br label %61

61:                                               ; preds = %58, %1
  ret void
}

declare dso_local i32 @x509_free_certificate(%struct.x509_certificate*) #1

declare dso_local i32 @pkcs7_free_signed_info(%struct.pkcs7_signed_info*) #1

declare dso_local i32 @kfree(%struct.pkcs7_message*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
