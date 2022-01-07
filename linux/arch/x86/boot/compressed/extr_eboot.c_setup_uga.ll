; ModuleID = '/home/carl/AnghaBench/linux/arch/x86/boot/compressed/extr_eboot.c_setup_uga.c'
source_filename = "/home/carl/AnghaBench/linux/arch/x86/boot/compressed/extr_eboot.c_setup_uga.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.screen_info = type { i32, i32, i32, i32, i32, i32, i32, i32, i64, i8*, i8*, i32 }

@allocate_pool = common dso_local global i32 0, align 4
@EFI_LOADER_DATA = common dso_local global i32 0, align 4
@EFI_SUCCESS = common dso_local global i64 0, align 8
@locate_handle = common dso_local global i32 0, align 4
@EFI_LOCATE_BY_PROTOCOL = common dso_local global i32 0, align 4
@EFI_PCI_IO_PROTOCOL_GUID = common dso_local global i32 0, align 4
@handle_protocol = common dso_local global i32 0, align 4
@efi_uga_draw_protocol = common dso_local global i32 0, align 4
@get_mode = common dso_local global i32 0, align 4
@VIDEO_TYPE_EFI = common dso_local global i32 0, align 4
@free_pool = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.screen_info*, i32*, i64)* @setup_uga to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @setup_uga(%struct.screen_info* %0, i32* %1, i64 %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca %struct.screen_info*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8**, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i64, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i8*, align 8
  %18 = alloca i8*, align 8
  %19 = alloca i8*, align 8
  %20 = alloca i8*, align 8
  %21 = alloca i8*, align 8
  %22 = alloca i64, align 8
  store %struct.screen_info* %0, %struct.screen_info** %5, align 8
  store i32* %1, i32** %6, align 8
  store i64 %2, i64* %7, align 8
  store i8** null, i8*** %11, align 8
  store i32* null, i32** %12, align 8
  %23 = load i32, i32* @allocate_pool, align 4
  %24 = load i32, i32* @EFI_LOADER_DATA, align 4
  %25 = load i64, i64* %7, align 8
  %26 = bitcast i8*** %11 to i8**
  %27 = call i64 (i32, ...) @efi_call_early(i32 %23, i32 %24, i64 %25, i8** %26)
  store i64 %27, i64* %8, align 8
  %28 = load i64, i64* %8, align 8
  %29 = load i64, i64* @EFI_SUCCESS, align 8
  %30 = icmp ne i64 %28, %29
  br i1 %30, label %31, label %33

31:                                               ; preds = %3
  %32 = load i64, i64* %8, align 8
  store i64 %32, i64* %4, align 8
  br label %152

33:                                               ; preds = %3
  %34 = load i32, i32* @locate_handle, align 4
  %35 = load i32, i32* @EFI_LOCATE_BY_PROTOCOL, align 4
  %36 = load i32*, i32** %6, align 8
  %37 = load i8**, i8*** %11, align 8
  %38 = call i64 (i32, ...) @efi_call_early(i32 %34, i32 %35, i32* %36, i8* null, i64* %7, i8** %37)
  store i64 %38, i64* %8, align 8
  %39 = load i64, i64* %8, align 8
  %40 = load i64, i64* @EFI_SUCCESS, align 8
  %41 = icmp ne i64 %39, %40
  br i1 %41, label %42, label %43

42:                                               ; preds = %33
  br label %147

43:                                               ; preds = %33
  store i8* null, i8** %10, align 8
  store i8* null, i8** %9, align 8
  store i32* null, i32** %13, align 8
  %44 = load i64, i64* %7, align 8
  %45 = call i64 (...) @efi_is_64bit()
  %46 = icmp ne i64 %45, 0
  %47 = zext i1 %46 to i64
  %48 = select i1 %46, i64 8, i64 8
  %49 = udiv i64 %44, %48
  store i64 %49, i64* %14, align 8
  store i32 0, i32* %15, align 4
  br label %50

50:                                               ; preds = %109, %43
  %51 = load i32, i32* %15, align 4
  %52 = sext i32 %51 to i64
  %53 = load i64, i64* %14, align 8
  %54 = icmp ult i64 %52, %53
  br i1 %54, label %55, label %112

55:                                               ; preds = %50
  %56 = load i32, i32* @EFI_PCI_IO_PROTOCOL_GUID, align 4
  store i32 %56, i32* %16, align 4
  %57 = call i64 (...) @efi_is_64bit()
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %59, label %65

59:                                               ; preds = %55
  %60 = load i8**, i8*** %11, align 8
  %61 = load i32, i32* %15, align 4
  %62 = sext i32 %61 to i64
  %63 = getelementptr inbounds i8*, i8** %60, i64 %62
  %64 = load i8*, i8** %63, align 8
  br label %71

65:                                               ; preds = %55
  %66 = load i8**, i8*** %11, align 8
  %67 = load i32, i32* %15, align 4
  %68 = sext i32 %67 to i64
  %69 = getelementptr inbounds i8*, i8** %66, i64 %68
  %70 = load i8*, i8** %69, align 8
  br label %71

71:                                               ; preds = %65, %59
  %72 = phi i8* [ %64, %59 ], [ %70, %65 ]
  %73 = ptrtoint i8* %72 to i64
  store i64 %73, i64* %22, align 8
  %74 = load i32, i32* @handle_protocol, align 4
  %75 = load i64, i64* %22, align 8
  %76 = load i32*, i32** %6, align 8
  %77 = bitcast i32** %12 to i8**
  %78 = call i64 (i32, ...) @efi_call_early(i32 %74, i64 %75, i32* %76, i8** %77)
  store i64 %78, i64* %8, align 8
  %79 = load i64, i64* %8, align 8
  %80 = load i64, i64* @EFI_SUCCESS, align 8
  %81 = icmp ne i64 %79, %80
  br i1 %81, label %82, label %83

82:                                               ; preds = %71
  br label %109

83:                                               ; preds = %71
  store i8* null, i8** %21, align 8
  %84 = load i32, i32* @handle_protocol, align 4
  %85 = load i64, i64* %22, align 8
  %86 = call i64 (i32, ...) @efi_call_early(i32 %84, i64 %85, i32* %16, i8** %21)
  %87 = load i32, i32* @efi_uga_draw_protocol, align 4
  %88 = load i32, i32* @get_mode, align 4
  %89 = load i32*, i32** %12, align 8
  %90 = call i64 @efi_call_proto(i32 %87, i32 %88, i32* %89, i8** %17, i8** %18, i8** %19, i8** %20)
  store i64 %90, i64* %8, align 8
  %91 = load i64, i64* %8, align 8
  %92 = load i64, i64* @EFI_SUCCESS, align 8
  %93 = icmp eq i64 %91, %92
  br i1 %93, label %94, label %108

94:                                               ; preds = %83
  %95 = load i32*, i32** %13, align 8
  %96 = icmp ne i32* %95, null
  br i1 %96, label %97, label %100

97:                                               ; preds = %94
  %98 = load i8*, i8** %21, align 8
  %99 = icmp ne i8* %98, null
  br i1 %99, label %100, label %108

100:                                              ; preds = %97, %94
  %101 = load i8*, i8** %17, align 8
  store i8* %101, i8** %9, align 8
  %102 = load i8*, i8** %18, align 8
  store i8* %102, i8** %10, align 8
  %103 = load i8*, i8** %21, align 8
  %104 = icmp ne i8* %103, null
  br i1 %104, label %105, label %106

105:                                              ; preds = %100
  br label %112

106:                                              ; preds = %100
  %107 = load i32*, i32** %12, align 8
  store i32* %107, i32** %13, align 8
  br label %108

108:                                              ; preds = %106, %97, %83
  br label %109

109:                                              ; preds = %108, %82
  %110 = load i32, i32* %15, align 4
  %111 = add nsw i32 %110, 1
  store i32 %111, i32* %15, align 4
  br label %50

112:                                              ; preds = %105, %50
  %113 = load i8*, i8** %9, align 8
  %114 = icmp ne i8* %113, null
  br i1 %114, label %119, label %115

115:                                              ; preds = %112
  %116 = load i8*, i8** %10, align 8
  %117 = icmp ne i8* %116, null
  br i1 %117, label %119, label %118

118:                                              ; preds = %115
  br label %147

119:                                              ; preds = %115, %112
  %120 = load i32, i32* @VIDEO_TYPE_EFI, align 4
  %121 = load %struct.screen_info*, %struct.screen_info** %5, align 8
  %122 = getelementptr inbounds %struct.screen_info, %struct.screen_info* %121, i32 0, i32 11
  store i32 %120, i32* %122, align 8
  %123 = load %struct.screen_info*, %struct.screen_info** %5, align 8
  %124 = getelementptr inbounds %struct.screen_info, %struct.screen_info* %123, i32 0, i32 0
  store i32 32, i32* %124, align 8
  %125 = load i8*, i8** %9, align 8
  %126 = load %struct.screen_info*, %struct.screen_info** %5, align 8
  %127 = getelementptr inbounds %struct.screen_info, %struct.screen_info* %126, i32 0, i32 10
  store i8* %125, i8** %127, align 8
  %128 = load i8*, i8** %10, align 8
  %129 = load %struct.screen_info*, %struct.screen_info** %5, align 8
  %130 = getelementptr inbounds %struct.screen_info, %struct.screen_info* %129, i32 0, i32 9
  store i8* %128, i8** %130, align 8
  %131 = load %struct.screen_info*, %struct.screen_info** %5, align 8
  %132 = getelementptr inbounds %struct.screen_info, %struct.screen_info* %131, i32 0, i32 1
  store i32 8, i32* %132, align 4
  %133 = load %struct.screen_info*, %struct.screen_info** %5, align 8
  %134 = getelementptr inbounds %struct.screen_info, %struct.screen_info* %133, i32 0, i32 2
  store i32 16, i32* %134, align 8
  %135 = load %struct.screen_info*, %struct.screen_info** %5, align 8
  %136 = getelementptr inbounds %struct.screen_info, %struct.screen_info* %135, i32 0, i32 3
  store i32 8, i32* %136, align 4
  %137 = load %struct.screen_info*, %struct.screen_info** %5, align 8
  %138 = getelementptr inbounds %struct.screen_info, %struct.screen_info* %137, i32 0, i32 4
  store i32 8, i32* %138, align 8
  %139 = load %struct.screen_info*, %struct.screen_info** %5, align 8
  %140 = getelementptr inbounds %struct.screen_info, %struct.screen_info* %139, i32 0, i32 5
  store i32 8, i32* %140, align 4
  %141 = load %struct.screen_info*, %struct.screen_info** %5, align 8
  %142 = getelementptr inbounds %struct.screen_info, %struct.screen_info* %141, i32 0, i32 8
  store i64 0, i64* %142, align 8
  %143 = load %struct.screen_info*, %struct.screen_info** %5, align 8
  %144 = getelementptr inbounds %struct.screen_info, %struct.screen_info* %143, i32 0, i32 6
  store i32 8, i32* %144, align 8
  %145 = load %struct.screen_info*, %struct.screen_info** %5, align 8
  %146 = getelementptr inbounds %struct.screen_info, %struct.screen_info* %145, i32 0, i32 7
  store i32 24, i32* %146, align 4
  br label %147

147:                                              ; preds = %119, %118, %42
  %148 = load i32, i32* @free_pool, align 4
  %149 = load i8**, i8*** %11, align 8
  %150 = call i64 (i32, ...) @efi_call_early(i32 %148, i8** %149)
  %151 = load i64, i64* %8, align 8
  store i64 %151, i64* %4, align 8
  br label %152

152:                                              ; preds = %147, %31
  %153 = load i64, i64* %4, align 8
  ret i64 %153
}

declare dso_local i64 @efi_call_early(i32, ...) #1

declare dso_local i64 @efi_is_64bit(...) #1

declare dso_local i64 @efi_call_proto(i32, i32, i32*, i8**, i8**, i8**, i8**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
