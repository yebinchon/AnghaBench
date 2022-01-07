; ModuleID = '/home/carl/AnghaBench/libgit2/tests/merge/trees/extr_renames.c_test_merge_trees_renames__index.c'
source_filename = "/home/carl/AnghaBench/libgit2/tests/merge/trees/extr_renames.c_test_merge_trees_renames__index.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.merge_index_entry = type { i32, i8*, i32, i8* }
%struct.merge_name_entry = type { i8*, i8*, i8* }
%struct.merge_reuc_entry = type { i8*, i32, i32, i32, i8*, i8*, i8* }

@.str = private unnamed_addr constant [41 x i8] c"68c6c84b091926c7d90aa6a79b2bc3bb6adccd8e\00", align 1
@.str.1 = private unnamed_addr constant [17 x i8] c"0a-no-change.txt\00", align 1
@.str.2 = private unnamed_addr constant [41 x i8] c"f0ce2b8e4986084d9b308fb72709e414c23eb5e6\00", align 1
@.str.3 = private unnamed_addr constant [26 x i8] c"0b-duplicated-in-ours.txt\00", align 1
@.str.4 = private unnamed_addr constant [25 x i8] c"0b-rewritten-in-ours.txt\00", align 1
@.str.5 = private unnamed_addr constant [41 x i8] c"e376fbdd06ebf021c92724da9f26f44212734e3e\00", align 1
@.str.6 = private unnamed_addr constant [41 x i8] c"b2d399ae15224e1d58066e3c8df70ce37de7a656\00", align 1
@.str.7 = private unnamed_addr constant [41 x i8] c"2f56120107d680129a5d9791b521cb1e73a2ed31\00", align 1
@.str.8 = private unnamed_addr constant [28 x i8] c"0c-duplicated-in-theirs.txt\00", align 1
@.str.9 = private unnamed_addr constant [27 x i8] c"0c-rewritten-in-theirs.txt\00", align 1
@.str.10 = private unnamed_addr constant [41 x i8] c"efc9121fdedaf08ba180b53ebfbcf71bd488ed09\00", align 1
@.str.11 = private unnamed_addr constant [41 x i8] c"712ebba6669ea847d9829e4f1059d6c830c8b531\00", align 1
@.str.12 = private unnamed_addr constant [41 x i8] c"0d872f8e871a30208305978ecbf9e66d864f1638\00", align 1
@.str.13 = private unnamed_addr constant [40 x i8] c"1a-newname-in-ours-edited-in-theirs.txt\00", align 1
@.str.14 = private unnamed_addr constant [41 x i8] c"d0d4594e16f2e19107e3fa7ea63e7aaaff305ffb\00", align 1
@.str.15 = private unnamed_addr constant [23 x i8] c"1a-newname-in-ours.txt\00", align 1
@.str.16 = private unnamed_addr constant [41 x i8] c"ed9523e62e453e50dd9be1606af19399b96e397a\00", align 1
@.str.17 = private unnamed_addr constant [40 x i8] c"1b-newname-in-theirs-edited-in-ours.txt\00", align 1
@.str.18 = private unnamed_addr constant [41 x i8] c"2b5f1f181ee3b58ea751f5dd5d8f9b445520a136\00", align 1
@.str.19 = private unnamed_addr constant [25 x i8] c"1b-newname-in-theirs.txt\00", align 1
@.str.20 = private unnamed_addr constant [41 x i8] c"178940b450f238a56c0d75b7955cb57b38191982\00", align 1
@.str.21 = private unnamed_addr constant [22 x i8] c"2-newname-in-both.txt\00", align 1
@.str.22 = private unnamed_addr constant [41 x i8] c"18cb316b1cefa0f8a6946f0e201a8e1a6f845ab9\00", align 1
@.str.23 = private unnamed_addr constant [41 x i8] c"3a-newname-in-ours-deleted-in-theirs.txt\00", align 1
@.str.24 = private unnamed_addr constant [41 x i8] c"3a-renamed-in-ours-deleted-in-theirs.txt\00", align 1
@.str.25 = private unnamed_addr constant [41 x i8] c"36219b49367146cb2e6a1555b5a9ebd4d0328495\00", align 1
@.str.26 = private unnamed_addr constant [41 x i8] c"3b-newname-in-theirs-deleted-in-ours.txt\00", align 1
@.str.27 = private unnamed_addr constant [41 x i8] c"3b-renamed-in-theirs-deleted-in-ours.txt\00", align 1
@.str.28 = private unnamed_addr constant [41 x i8] c"227792b52aaa0b238bea00ec7e509b02623f168c\00", align 1
@.str.29 = private unnamed_addr constant [39 x i8] c"4a-newname-in-ours-added-in-theirs.txt\00", align 1
@.str.30 = private unnamed_addr constant [41 x i8] c"8b5b53cb2aa9ceb1139f5312fcfa3cc3c5a47c9a\00", align 1
@.str.31 = private unnamed_addr constant [39 x i8] c"4a-renamed-in-ours-added-in-theirs.txt\00", align 1
@.str.32 = private unnamed_addr constant [41 x i8] c"de872ee3618b894992e9d1e18ba2ebe256a112f9\00", align 1
@.str.33 = private unnamed_addr constant [39 x i8] c"4b-newname-in-theirs-added-in-ours.txt\00", align 1
@.str.34 = private unnamed_addr constant [41 x i8] c"98d52d07c0b0bbf2b46548f6aa521295c2cb55db\00", align 1
@.str.35 = private unnamed_addr constant [39 x i8] c"4b-renamed-in-theirs-added-in-ours.txt\00", align 1
@.str.36 = private unnamed_addr constant [41 x i8] c"d3719a5ae8e4d92276b5313ce976f6ee5af2b436\00", align 1
@.str.37 = private unnamed_addr constant [39 x i8] c"5a-newname-in-ours-added-in-theirs.txt\00", align 1
@.str.38 = private unnamed_addr constant [41 x i8] c"98ba4205fcf31f5dd93c916d35fe3f3b3d0e6714\00", align 1
@.str.39 = private unnamed_addr constant [39 x i8] c"5a-renamed-in-ours-added-in-theirs.txt\00", align 1
@.str.40 = private unnamed_addr constant [41 x i8] c"385c8a0f26ddf79e9041e15e17dc352ed2c4cced\00", align 1
@.str.41 = private unnamed_addr constant [39 x i8] c"5b-newname-in-theirs-added-in-ours.txt\00", align 1
@.str.42 = private unnamed_addr constant [41 x i8] c"63247125386de9ec90a27ad36169307bf8a11a38\00", align 1
@.str.43 = private unnamed_addr constant [39 x i8] c"5b-renamed-in-theirs-added-in-ours.txt\00", align 1
@.str.44 = private unnamed_addr constant [41 x i8] c"d8fa77b6833082c1ea36b7828a582d4c43882450\00", align 1
@.str.45 = private unnamed_addr constant [31 x i8] c"6-both-renamed-1-to-2-ours.txt\00", align 1
@.str.46 = private unnamed_addr constant [33 x i8] c"6-both-renamed-1-to-2-theirs.txt\00", align 1
@.str.47 = private unnamed_addr constant [26 x i8] c"6-both-renamed-1-to-2.txt\00", align 1
@.str.48 = private unnamed_addr constant [41 x i8] c"b42712cfe99a1a500b2a51fe984e0b8a7702ba11\00", align 1
@.str.49 = private unnamed_addr constant [26 x i8] c"7-both-renamed-side-1.txt\00", align 1
@.str.50 = private unnamed_addr constant [41 x i8] c"b69fe837e4cecfd4c9a40cdca7c138468687df07\00", align 1
@.str.51 = private unnamed_addr constant [26 x i8] c"7-both-renamed-side-2.txt\00", align 1
@.str.52 = private unnamed_addr constant [19 x i8] c"7-both-renamed.txt\00", align 1
@__const.test_merge_trees_renames__index.merge_index_entries = private unnamed_addr constant [41 x %struct.merge_index_entry] [%struct.merge_index_entry { i32 33188, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i32 0, i32 0), i32 0, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i32 0, i32 0) }, %struct.merge_index_entry { i32 33188, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.2, i32 0, i32 0), i32 0, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.3, i32 0, i32 0) }, %struct.merge_index_entry { i32 33188, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.2, i32 0, i32 0), i32 1, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.4, i32 0, i32 0) }, %struct.merge_index_entry { i32 33188, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.5, i32 0, i32 0), i32 2, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.4, i32 0, i32 0) }, %struct.merge_index_entry { i32 33188, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.6, i32 0, i32 0), i32 3, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.4, i32 0, i32 0) }, %struct.merge_index_entry { i32 33188, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.7, i32 0, i32 0), i32 0, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.8, i32 0, i32 0) }, %struct.merge_index_entry { i32 33188, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.7, i32 0, i32 0), i32 1, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.9, i32 0, i32 0) }, %struct.merge_index_entry { i32 33188, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.10, i32 0, i32 0), i32 2, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.9, i32 0, i32 0) }, %struct.merge_index_entry { i32 33188, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.11, i32 0, i32 0), i32 3, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.9, i32 0, i32 0) }, %struct.merge_index_entry { i32 33188, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.12, i32 0, i32 0), i32 0, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.13, i32 0, i32 0) }, %struct.merge_index_entry { i32 33188, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.14, i32 0, i32 0), i32 0, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.15, i32 0, i32 0) }, %struct.merge_index_entry { i32 33188, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.16, i32 0, i32 0), i32 0, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.17, i32 0, i32 0) }, %struct.merge_index_entry { i32 33188, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.18, i32 0, i32 0), i32 0, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.19, i32 0, i32 0) }, %struct.merge_index_entry { i32 33188, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.20, i32 0, i32 0), i32 0, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.21, i32 0, i32 0) }, %struct.merge_index_entry { i32 33188, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.22, i32 0, i32 0), i32 2, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.23, i32 0, i32 0) }, %struct.merge_index_entry { i32 33188, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.22, i32 0, i32 0), i32 1, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.24, i32 0, i32 0) }, %struct.merge_index_entry { i32 33188, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.25, i32 0, i32 0), i32 3, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.26, i32 0, i32 0) }, %struct.merge_index_entry { i32 33188, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.25, i32 0, i32 0), i32 1, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.27, i32 0, i32 0) }, %struct.merge_index_entry { i32 33188, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.28, i32 0, i32 0), i32 2, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.29, i32 0, i32 0) }, %struct.merge_index_entry { i32 33188, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.30, i32 0, i32 0), i32 3, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.29, i32 0, i32 0) }, %struct.merge_index_entry { i32 33188, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.28, i32 0, i32 0), i32 1, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.31, i32 0, i32 0) }, %struct.merge_index_entry { i32 33188, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.32, i32 0, i32 0), i32 2, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.33, i32 0, i32 0) }, %struct.merge_index_entry { i32 33188, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.34, i32 0, i32 0), i32 3, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.33, i32 0, i32 0) }, %struct.merge_index_entry { i32 33188, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.34, i32 0, i32 0), i32 1, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.35, i32 0, i32 0) }, %struct.merge_index_entry { i32 33188, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.36, i32 0, i32 0), i32 2, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.37, i32 0, i32 0) }, %struct.merge_index_entry { i32 33188, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.38, i32 0, i32 0), i32 3, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.37, i32 0, i32 0) }, %struct.merge_index_entry { i32 33188, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.36, i32 0, i32 0), i32 1, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.39, i32 0, i32 0) }, %struct.merge_index_entry { i32 33188, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.36, i32 0, i32 0), i32 3, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.39, i32 0, i32 0) }, %struct.merge_index_entry { i32 33188, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.40, i32 0, i32 0), i32 2, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.41, i32 0, i32 0) }, %struct.merge_index_entry { i32 33188, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.42, i32 0, i32 0), i32 3, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.41, i32 0, i32 0) }, %struct.merge_index_entry { i32 33188, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.42, i32 0, i32 0), i32 1, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.43, i32 0, i32 0) }, %struct.merge_index_entry { i32 33188, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.42, i32 0, i32 0), i32 2, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.43, i32 0, i32 0) }, %struct.merge_index_entry { i32 33188, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.44, i32 0, i32 0), i32 2, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.45, i32 0, i32 0) }, %struct.merge_index_entry { i32 33188, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.44, i32 0, i32 0), i32 3, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.46, i32 0, i32 0) }, %struct.merge_index_entry { i32 33188, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.44, i32 0, i32 0), i32 1, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.47, i32 0, i32 0) }, %struct.merge_index_entry { i32 33188, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.48, i32 0, i32 0), i32 1, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.49, i32 0, i32 0) }, %struct.merge_index_entry { i32 33188, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.48, i32 0, i32 0), i32 3, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.49, i32 0, i32 0) }, %struct.merge_index_entry { i32 33188, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.50, i32 0, i32 0), i32 1, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.51, i32 0, i32 0) }, %struct.merge_index_entry { i32 33188, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.50, i32 0, i32 0), i32 2, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.51, i32 0, i32 0) }, %struct.merge_index_entry { i32 33188, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.48, i32 0, i32 0), i32 2, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.52, i32 0, i32 0) }, %struct.merge_index_entry { i32 33188, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.50, i32 0, i32 0), i32 3, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.52, i32 0, i32 0) }], align 16
@.str.53 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@__const.test_merge_trees_renames__index.merge_name_entries = private unnamed_addr constant [9 x %struct.merge_name_entry] [%struct.merge_name_entry { i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.24, i32 0, i32 0), i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.23, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.53, i32 0, i32 0) }, %struct.merge_name_entry { i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.27, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.53, i32 0, i32 0), i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.26, i32 0, i32 0) }, %struct.merge_name_entry { i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.31, i32 0, i32 0), i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.29, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.53, i32 0, i32 0) }, %struct.merge_name_entry { i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.35, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.53, i32 0, i32 0), i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.33, i32 0, i32 0) }, %struct.merge_name_entry { i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.39, i32 0, i32 0), i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.37, i32 0, i32 0), i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.39, i32 0, i32 0) }, %struct.merge_name_entry { i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.43, i32 0, i32 0), i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.43, i32 0, i32 0), i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.41, i32 0, i32 0) }, %struct.merge_name_entry { i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.47, i32 0, i32 0), i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.45, i32 0, i32 0), i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.46, i32 0, i32 0) }, %struct.merge_name_entry { i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.49, i32 0, i32 0), i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.52, i32 0, i32 0), i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.49, i32 0, i32 0) }, %struct.merge_name_entry { i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.51, i32 0, i32 0), i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.51, i32 0, i32 0), i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.52, i32 0, i32 0) }], align 16
@.str.54 = private unnamed_addr constant [41 x i8] c"c3d02eeef75183df7584d8d13ac03053910c1301\00", align 1
@.str.55 = private unnamed_addr constant [40 x i8] c"1a-renamed-in-ours-edited-in-theirs.txt\00", align 1
@.str.56 = private unnamed_addr constant [23 x i8] c"1a-renamed-in-ours.txt\00", align 1
@.str.57 = private unnamed_addr constant [41 x i8] c"241a1005cd9b980732741b74385b891142bcba28\00", align 1
@.str.58 = private unnamed_addr constant [40 x i8] c"1b-renamed-in-theirs-edited-in-ours.txt\00", align 1
@.str.59 = private unnamed_addr constant [25 x i8] c"1b-renamed-in-theirs.txt\00", align 1
@.str.60 = private unnamed_addr constant [22 x i8] c"2-renamed-in-both.txt\00", align 1
@__const.test_merge_trees_renames__index.merge_reuc_entries = private unnamed_addr constant [10 x %struct.merge_reuc_entry] [%struct.merge_reuc_entry { i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.13, i32 0, i32 0), i32 0, i32 33188, i32 0, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.53, i32 0, i32 0), i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.54, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.53, i32 0, i32 0) }, %struct.merge_reuc_entry { i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.15, i32 0, i32 0), i32 0, i32 33188, i32 0, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.53, i32 0, i32 0), i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.14, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.53, i32 0, i32 0) }, %struct.merge_reuc_entry { i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.55, i32 0, i32 0), i32 33188, i32 0, i32 33188, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.54, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.53, i32 0, i32 0), i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.12, i32 0, i32 0) }, %struct.merge_reuc_entry { i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.56, i32 0, i32 0), i32 33188, i32 0, i32 33188, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.14, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.53, i32 0, i32 0), i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.14, i32 0, i32 0) }, %struct.merge_reuc_entry { i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.17, i32 0, i32 0), i32 0, i32 0, i32 33188, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.53, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.53, i32 0, i32 0), i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.57, i32 0, i32 0) }, %struct.merge_reuc_entry { i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.19, i32 0, i32 0), i32 0, i32 0, i32 33188, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.53, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.53, i32 0, i32 0), i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.18, i32 0, i32 0) }, %struct.merge_reuc_entry { i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.58, i32 0, i32 0), i32 33188, i32 33188, i32 0, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.57, i32 0, i32 0), i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.16, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.53, i32 0, i32 0) }, %struct.merge_reuc_entry { i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.59, i32 0, i32 0), i32 33188, i32 33188, i32 0, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.18, i32 0, i32 0), i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.18, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.53, i32 0, i32 0) }, %struct.merge_reuc_entry { i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.21, i32 0, i32 0), i32 0, i32 33188, i32 33188, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.53, i32 0, i32 0), i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.20, i32 0, i32 0), i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.20, i32 0, i32 0) }, %struct.merge_reuc_entry { i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.60, i32 0, i32 0), i32 33188, i32 0, i32 0, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.20, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.53, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.53, i32 0, i32 0) }], align 16
@repo = common dso_local global i32 0, align 4
@BRANCH_RENAME_OURS = common dso_local global i32 0, align 4
@BRANCH_RENAME_THEIRS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @test_merge_trees_renames__index() #0 {
  %1 = alloca i32*, align 8
  %2 = alloca i32*, align 8
  %3 = alloca [41 x %struct.merge_index_entry], align 16
  %4 = alloca [9 x %struct.merge_name_entry], align 16
  %5 = alloca [10 x %struct.merge_reuc_entry], align 16
  store i32* null, i32** %2, align 8
  %6 = bitcast [41 x %struct.merge_index_entry]* %3 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %6, i8* align 16 bitcast ([41 x %struct.merge_index_entry]* @__const.test_merge_trees_renames__index.merge_index_entries to i8*), i64 1312, i1 false)
  %7 = bitcast [9 x %struct.merge_name_entry]* %4 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %7, i8* align 16 bitcast ([9 x %struct.merge_name_entry]* @__const.test_merge_trees_renames__index.merge_name_entries to i8*), i64 216, i1 false)
  %8 = bitcast [10 x %struct.merge_reuc_entry]* %5 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %8, i8* align 16 bitcast ([10 x %struct.merge_reuc_entry]* @__const.test_merge_trees_renames__index.merge_reuc_entries to i8*), i64 480, i1 false)
  %9 = load i32, i32* @repo, align 4
  %10 = load i32, i32* @BRANCH_RENAME_OURS, align 4
  %11 = load i32, i32* @BRANCH_RENAME_THEIRS, align 4
  %12 = load i32*, i32** %2, align 8
  %13 = call i32 @merge_trees_from_branches(i32** %1, i32 %9, i32 %10, i32 %11, i32* %12)
  %14 = call i32 @cl_git_pass(i32 %13)
  %15 = load i32*, i32** %1, align 8
  %16 = getelementptr inbounds [41 x %struct.merge_index_entry], [41 x %struct.merge_index_entry]* %3, i64 0, i64 0
  %17 = call i32 @merge_test_index(i32* %15, %struct.merge_index_entry* %16, i32 41)
  %18 = call i32 @cl_assert(i32 %17)
  %19 = load i32*, i32** %1, align 8
  %20 = getelementptr inbounds [9 x %struct.merge_name_entry], [9 x %struct.merge_name_entry]* %4, i64 0, i64 0
  %21 = call i32 @merge_test_names(i32* %19, %struct.merge_name_entry* %20, i32 9)
  %22 = call i32 @cl_assert(i32 %21)
  %23 = load i32*, i32** %1, align 8
  %24 = getelementptr inbounds [10 x %struct.merge_reuc_entry], [10 x %struct.merge_reuc_entry]* %5, i64 0, i64 0
  %25 = call i32 @merge_test_reuc(i32* %23, %struct.merge_reuc_entry* %24, i32 10)
  %26 = call i32 @cl_assert(i32 %25)
  %27 = load i32*, i32** %1, align 8
  %28 = call i32 @git_index_free(i32* %27)
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @cl_git_pass(i32) #2

declare dso_local i32 @merge_trees_from_branches(i32**, i32, i32, i32, i32*) #2

declare dso_local i32 @cl_assert(i32) #2

declare dso_local i32 @merge_test_index(i32*, %struct.merge_index_entry*, i32) #2

declare dso_local i32 @merge_test_names(i32*, %struct.merge_name_entry*, i32) #2

declare dso_local i32 @merge_test_reuc(i32*, %struct.merge_reuc_entry*, i32) #2

declare dso_local i32 @git_index_free(i32*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
