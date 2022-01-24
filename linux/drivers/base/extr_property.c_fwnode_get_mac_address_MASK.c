void *FUNC0(struct fwnode_handle *fwnode, char *addr, int alen)
{
	char *res;

	res = FUNC0(fwnode, "mac-address", addr, alen);
	if (res)
		return res;

	res = FUNC0(fwnode, "local-mac-address", addr, alen);
	if (res)
		return res;

	return FUNC0(fwnode, "address", addr, alen);
}